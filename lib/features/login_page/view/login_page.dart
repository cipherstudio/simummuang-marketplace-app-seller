import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:smm_seller_application/core/authenticator/auth_exception.dart';
import 'package:smm_seller_application/core/authenticator/authenticator_service.dart';
import 'package:smm_seller_application/core/authenticator/credential.dart';
import 'package:smm_seller_application/core/enums/app_enums.dart';
import 'package:smm_seller_application/domain/data/models/login/mobile_login_password_response_model.dart';
import 'package:smm_seller_application/extensions/extension.dart';
import 'package:smm_seller_application/features/login_page/bloc/login_bloc.dart';
import 'package:smm_seller_application/injector/app_injector.dart';
import 'package:smm_seller_application/router/app_router.dart';
import 'package:smm_seller_application/src/dialogs/smm_dialog_manager.dart';

import 'package:smm_seller_application/translation/generated/l10n.dart';
import 'package:smm_seller_application/utils/dialog_utils.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_components/themes/app_colors.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController mobileNumberTextFieldController =
      TextEditingController();

  final TextEditingController passwordTextFieldController =
      TextEditingController();
  // late final LoginBloc _loginBloc;
  SMMDialogManager dialogManager = SMMDialogManager();

  void _onLoginSuccess(
      BuildContext context, MobileLoginPasswordResponseModel loginData) {
    AuthenticatorService authService = AuthenticatorService.of(context);
    authService.setCredential(
      Credential.authorized(
        accessToken: loginData.token!.replaceAll('"', ''),
        refreshToken: loginData.token!.replaceAll('"', ''),
        expireAt: DateTime.now().millisecondsSinceEpoch + (600000 * 1000),
      ),
    );
    context.pushNamed(AppRouter.sellerSettingPageNamed);
  }

  @override
  Widget build(BuildContext context) {
    // _loginBloc = Injector.instance<LoginBloc>();
    return BlocProvider(
      create: (context) => Injector.instance<LoginBloc>()
        ..add(const LoginBlocEvent.initialize()),
      child: BlocConsumer<LoginBloc, LoginBlocState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          state.status.whenOrNull(
            initial: () {},
            loading: () {
              dialogManager.showLoading(context);
            },
            loadFailed: (message, error) {
              if (error is AuthenticatorExeption) {
                dialogManager.dismissLoadingDialog();
                DialogUtils.openErrorDialog(
                    context, 'เบอร์โทรศัพท์หรือรหัสผ่านไม่ถูกต้อง');
              } else {
                dialogManager.dismissLoadingDialog();
                DialogUtils.openErrorDialog(context, 'มีบางอย่างผิดพลาด');
              }
            },
            loadSuccess: (message) {
              dialogManager.dismissLoadingDialog();
              _onLoginSuccess(context, state.loginData!);
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
                  context.pushNamed(AppRouter.forgotPasswordPageNamed);
                }),
                const SizedBox(
                  height: 24,
                ),
                SMMFilledButton.normal(
                  width: double.infinity,
                  label: Trans.current.login_button_label,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<LoginBloc>(context)
                          .add(LoginBlocEvent.login(
                        mobileNumberTextFieldController:
                            mobileNumberTextFieldController,
                        passwordTextFieldController:
                            passwordTextFieldController,
                      ));
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                // ExternalLogin(
                //   title: Trans.current.login_external_title,
                //   detail: Trans.current.login_external_detail,
                //   textButton: Trans.current.login_external_text_button,
                //   onTextButtonTap: () {
                //     context.goNamed(AppRouter.registerPageNamed);
                //   },
                //   onSocialMediaTap: (socialMediaKindEnum) {
                //     print(socialMediaKindEnum);
                //   },
                // ),
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
      text: Trans.current.login_phone_number_label,
      isStar: true,
      child: BlocBuilder<LoginBloc, LoginBlocState>(
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          return SMMTextFormField.email(
            controller: mobileNumberTextFieldController,
            onChanged: (value) {
              if (value!.isEmpty) {
                BlocProvider.of<LoginBloc>(context)
                    .add(const LoginBlocEvent.initialEmailTextFormField());
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              PhoneNumber phoneNumberInstance = PhoneNumber.parse(
                value ?? '',
                callerCountry: IsoCode.TH,
              );

              if (value.stringNullOrEmpty) {
                return 'โปรดระบุเบอร์โทรศัพท์';
              } else {
                RegExp regExp = RegExp(r'^\d+$');
                // เอา RegEx มาเช็คว่า input เป็น numeric หมดไหม
                if (regExp.hasMatch(value!)) {
                  // เข้าไป validate phone number
                  // if (!phoneNumberInstance.isValid()) {
                  //   return 'รูปแบบเบอร์มือถือไม่ถูกต้อง';
                  // }
                } else {
                  return 'รูปแบบเบอร์มือถือไม่ถูกต้อง';
                }
              }

              return null;
            },
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
            onSubmit: (value) {
              if (_formKey.currentState!.validate()) {
                BlocProvider.of<LoginBloc>(context).add(LoginBlocEvent.login(
                  mobileNumberTextFieldController:
                      mobileNumberTextFieldController,
                  passwordTextFieldController: passwordTextFieldController,
                ));
              }
            },
            onChanged: (value) {
              if (value!.isEmpty) {
                BlocProvider.of<LoginBloc>(context)
                    .add(const LoginBlocEvent.initialPasswordTextFormField());
              }
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              return value.stringNullOrEmpty ? 'โปรดระบุรหัสผ่าน' : null;
            },
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
                onChanged: (value) {
                  AuthenticatorService authService =
                      AuthenticatorService.of(context);
                  authService.setRememberPassword(value ?? false);
                },
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
