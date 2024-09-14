import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/core/enums/app_enums.dart';
import 'package:smm_application/features/login_page/bloc/login_bloc.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc()..add(const LoginBlocEvent.initialize()),
      child: BlocConsumer<LoginBloc, LoginBlocState>(
        listener: (context, state) {
          state.checkEmailStatus.whenOrNull(
            loadSuccess: (message) {
              _formKey.currentState?.validate();
            },
          );
        },
        builder: (context, state) {
          return _body(context, state);
        },
      ),
    );
  }

  Widget _body(BuildContext context, LoginBlocState state) {
    return Scaffold(
      appBar: SMMAppBar.loginAndRegister(),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Center(
                    child: Text(
                      Trans.current.login_title,
                      style: AppTextStyles.displaySMSemibold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildEmailTextFormField(),
                const SizedBox(
                  height: 16,
                ),
                SMMTextLabel.textField(
                  text: Trans.current.login_password_label,
                  isStar: true,
                  child: SMMTextFormField.obscure(
                    isEnable: true,
                    hintText: Trans.current.login_password_hint_label,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                _buildRememberAndForgotPassword(context, () {}),
                const SizedBox(
                  height: 24,
                ),
                SMMFilledButton.normal(
                  width: double.infinity,
                  label: Trans.current.login_button_label,
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context)
                        .add(const LoginBlocEvent.login());
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ExternalLogin(
                  title: Trans.current.login_external_title,
                  detail: Trans.current.login_external_detail,
                  textButton: Trans.current.login_external_text_button,
                  onSocialMediaTap: (socialMediaKindEnum) {
                    print(socialMediaKindEnum);
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget _buildEmailTextFormField() {
    return SMMTextLabel.textField(
      text: Trans.current.login_email_label,
      isStar: true,
      child: BlocBuilder<LoginBloc, LoginBlocState>(
        builder: (context, state) {
          return state.checkEmailStatus.whenOrNull(
                loadSuccess: (message) {
                  return SMMTextFormField.email(
                    autovalidateMode: AutovalidateMode.disabled,
                    isEnable: true,
                    hintText: Trans.current.login_email_hint_label,
                    validator: (state.emailValidatorMessage != null)
                        ? (value) => state.emailValidatorMessage
                        : null,
                  );
                },
              ) ??
              const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildRememberAndForgotPassword(
      BuildContext context, Function()? onForgotPasswordTap) {
    return BlocBuilder<LoginBloc, LoginBlocState>(
      builder: (BuildContext context, LoginBlocState state) {
        if (state.passwordOptionEnum == PasswordOptionEnum.rememberAndForgot) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SMMCheckbox.withText(
                text: Trans.current.login_remember_me_label,
              ),
              InkWell(
                onTap: onForgotPasswordTap,
                child: Text(
                  Trans.current.login_forgot_password_label,
                  style: const TextStyle(color: AppColors.primaryBrandMain),
                ),
              ),
            ],
          );
        } else if (state.passwordOptionEnum == PasswordOptionEnum.forgotOnly) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: onForgotPasswordTap,
                child: Text(
                  Trans.current.login_forgot_password_label,
                  style: const TextStyle(color: AppColors.primaryBrandMain),
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
