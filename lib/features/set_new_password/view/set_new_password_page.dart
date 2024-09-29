import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/set_new_password/bloc/set_new_password_bloc.dart';
import 'package:smm_application/injector/app_injector.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/src/dialogs/smm_dialog_manager.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';
import 'package:smm_application/utils/dialog_utils.dart';

class SetNewPasswordPage extends StatefulWidget {
  const SetNewPasswordPage({super.key, this.email = 'finch255@gmail.com'});
  final String email;
  @override
  State<SetNewPasswordPage> createState() => _SetNewPasswordPageState();
}

class _SetNewPasswordPageState extends State<SetNewPasswordPage> {
  late final SetNewPasswordBloc _setNewPasswordBloc;
  final _formKey = GlobalKey<FormState>();
  SMMDialogManager dialogManager = SMMDialogManager();
  @override
  Widget build(BuildContext context) {
    _setNewPasswordBloc = Injector.instance<SetNewPasswordBloc>();
    return BlocProvider.value(
      value: _setNewPasswordBloc
        ..add(
          const SetNewPasswordBlocEvent.initialize(),
        ),
      child: BlocConsumer<SetNewPasswordBloc, SetNewPasswordBlocState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          state.status.whenOrNull(
            initial: () {},
            loading: () {
              dialogManager.showLoading(context);
            },
            loadFailed: (message, error) {
              dialogManager.dismissLoadingDialog();
              DialogUtils.openErrorDialog(context, message);
            },
            loadSuccess: (message) {
              dialogManager.dismissLoadingDialog();
            },
          );
        },
        builder: (BuildContext context, SetNewPasswordBlocState state) {
          return _displayUI(context);
        },
      ),
    );
  }

  Widget _displayUI(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.loginAndRegister(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 16),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                        child: Text(
                      Trans.current.set_new_password_main_title,
                      style: AppTextStyles.displaySMSemibold,
                    )),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SMMTextLabel.textField(
                    text: Trans.current.set_new_password_first_text_label,
                    isStar: true,
                    child: SMMTextFormField.obscure(
                      controller: _setNewPasswordBloc.newPasswordController,
                      validator: (value) {
                        if ((value ?? '').length < 6) {
                          return 'อย่างน้อย 6 ตัวอักษร';
                        }
                        return null;
                      },
                      isEnable: true,
                      hintText: Trans
                          .current.set_new_password_first_text_form_field_hint,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SMMTextLabel.textField(
                    text: Trans.current.set_new_password_second_text_label,
                    isStar: true,
                    child: SMMTextFormField.obscure(
                      controller:
                          _setNewPasswordBloc.confirmNewPasswordController,
                      validator: (value) {
                        if (value !=
                            _setNewPasswordBloc.newPasswordController.text) {
                          return 'ยืนยันรหัสผ่านต้องตรงกับรหัสผ่าน';
                        }
                        return null;
                      },
                      isEnable: true,
                      hintText: Trans
                          .current.set_new_password_second_text_form_field_hint,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: SMMFilledButton.normal(
                      width: double.infinity,
                      label: Trans.current.set_new_password_button_label,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SetNewPasswordBloc>().add(
                              SetNewPasswordBlocEvent.resetPassword(
                                  email: widget.email,
                                  newPassword: _setNewPasswordBloc
                                      .newPasswordController.text));
                        }
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Trans.current.set_new_password_not_have_account_label,
                        style: AppTextStyles.textSMRegular,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        child: Text(
                          Trans.current
                              .set_new_password_create_new_account_label,
                          style: AppTextStyles.textSMSemiBold.copyWith(
                            color: AppColors.primaryBrandMain,
                          ),
                        ),
                        onTap: () {
                          context.pushNamed(AppRouter.registerPageNamed);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
