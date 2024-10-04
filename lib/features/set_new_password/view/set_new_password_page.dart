import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_seller_application/features/set_new_password/bloc/set_new_password_bloc.dart';
import 'package:smm_seller_application/injector/app_injector.dart';
import 'package:smm_seller_application/router/app_router.dart';
import 'package:smm_seller_application/src/dialogs/smm_dialog_manager.dart';
import 'package:smm_seller_application/translation/generated/l10n.dart';
import 'package:smm_seller_application/utils/dialog_utils.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class SetNewPasswordPage extends StatefulWidget {
  const SetNewPasswordPage({super.key, this.mobile = ''});
  final String mobile;
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
              DialogUtils.openSuccessDialog(context, 'ตั้งรหัสสำเร็จ',
                  positiveTap: () {
                context.goNamed(AppRouter.loginPageNamed);
              });
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
                        // if (value == null || value.isEmpty) {
                        //   return 'โปรดระบุรหัสผ่านใหม่';
                        // } else if (value.length < 6) {
                        //   return 'อย่างน้อย 6 ตัวอักษร';
                        // }

                        const String pattern =
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{6,15}$';
                        final RegExp regExp = RegExp(pattern);

                        if (!regExp.hasMatch(value ?? '')) {
                          return 'รหัสผ่านไม่แข็งแรง';
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
                        const String pattern =
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{6,15}$';
                        final RegExp regExp = RegExp(pattern);

                        if (!regExp.hasMatch(value ?? '')) {
                          return 'รหัสผ่านไม่แข็งแรง';
                        } else {
                          if (value == null || value.isEmpty) {
                            return 'โปรดระบุยืนยันรหัสผ่านใหม่';
                          } else if (value !=
                                  _setNewPasswordBloc
                                      .newPasswordController.text &&
                              _setNewPasswordBloc
                                  .newPasswordController.text.isNotEmpty) {
                            return 'ยืนยันรหัสผ่านต้องตรงกับรหัสผ่าน';
                          }
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
                        // context.pushNamed(AppRouter.sellerSettingPageNamed);
                        if (_formKey.currentState!.validate()) {
                          context.read<SetNewPasswordBloc>().add(
                                SetNewPasswordBlocEvent.resetPassword(
                                    mobile: widget.mobile,
                                    newPassword: _setNewPasswordBloc
                                        .newPasswordController.text),
                              );
                        }
                      },
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       Trans.current.set_new_password_not_have_account_label,
                  //       style: AppTextStyles.textSMRegular,
                  //     ),
                  //     const SizedBox(
                  //       width: 4,
                  //     ),
                  //     InkWell(
                  //       child: Text(
                  //         Trans.current
                  //             .set_new_password_create_new_account_label,
                  //         style: AppTextStyles.textSMSemiBold.copyWith(
                  //           color: AppColors.primaryBrandMain,
                  //         ),
                  //       ),
                  //       onTap: () {
                  //         context.pushNamed(AppRouter.registerPageNamed);
                  //       },
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
