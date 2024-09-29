import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/core/authenticator/authenticator_service.dart';
import 'package:smm_application/core/authenticator/credential.dart';
import 'package:smm_application/core/enums/app_enums.dart';
import 'package:smm_application/features/login_page/bloc/login_bloc.dart';
import 'package:smm_application/injector/app_injector.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/src/dialogs/smm_dialog_manager.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';
import 'package:smm_application/utils/dialog_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailTextFieldController =
      TextEditingController();

  final TextEditingController passwordTextFieldController =
      TextEditingController();
  late final LoginBloc _loginBloc;
  SMMDialogManager dialogManager = SMMDialogManager();

  void _onLoginSuccess(BuildContext context, String token) {
    AuthenticatorService authService = AuthenticatorService.of(context);
    authService.setCredential(
      Credential.authorized(
        accessToken: token.replaceAll('"', ''),
        refreshToken: token.replaceAll('"', ''),
        expireAt: DateTime.now().millisecondsSinceEpoch + (600000 * 1000),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _loginBloc = Injector.instance<LoginBloc>();
    return BlocProvider.value(
      value: _loginBloc..add(const LoginBlocEvent.initialize()),
      child: BlocConsumer<LoginBloc, LoginBlocState>(
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
              _onLoginSuccess(context, state.token);
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
                _buildPasswordTextFormField(),
                const SizedBox(
                  height: 16,
                ),
                _buildRememberAndForgotPassword(context, () {
                  context.goNamed(AppRouter.forgotPasswordPageNamed);
                }),
                const SizedBox(
                  height: 24,
                ),
                SMMFilledButton.normal(
                  width: double.infinity,
                  label: Trans.current.login_button_label,
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context)
                        .add(LoginBlocEvent.login(
                      emailTextFieldController: emailTextFieldController,
                      passwordTextFieldController: passwordTextFieldController,
                    ));
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ExternalLogin(
                  title: Trans.current.login_external_title,
                  detail: Trans.current.login_external_detail,
                  textButton: Trans.current.login_external_text_button,
                  onTextButtonTap: () {
                    context.goNamed(AppRouter.registerPageNamed);
                  },
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
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          return SMMTextFormField.email(
            controller: emailTextFieldController,
            onChanged: (value) {
              if (value!.isEmpty) {
                BlocProvider.of<LoginBloc>(context)
                    .add(const LoginBlocEvent.initialEmailTextFormField());
              }
            },
            autovalidateMode: state.emailFieldProperties.autovalidateMode,
            validator: state.emailFieldProperties.validator,
            isEnable: true,
            hintText: Trans.current.login_email_hint_label,
          );
        },
      ),
    );
  }

  Widget _buildPasswordTextFormField() {
    return SMMTextLabel.textField(
      text: Trans.current.login_password_label,
      isStar: true,
      child: BlocBuilder<LoginBloc, LoginBlocState>(
        builder: (context, state) {
          return SMMTextFormField.obscure(
            controller: passwordTextFieldController,
            onChanged: (value) {
              if (value!.isEmpty) {
                BlocProvider.of<LoginBloc>(context)
                    .add(const LoginBlocEvent.initialPasswordTextFormField());
              }
            },
            autovalidateMode: state.passwordFieldProperties.autovalidateMode,
            validator: state.passwordFieldProperties.validator,
            isEnable: true,
            hintText: Trans.current.login_password_hint_label,
          );
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
