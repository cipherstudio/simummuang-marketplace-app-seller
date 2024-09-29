import 'package:injectable/injectable.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';
import 'package:smm_application/domain/repository/otp_repository.dart';
import 'package:smm_application/features/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:smm_application/features/login_page/bloc/login_bloc.dart';

@module
abstract class BlocPrivilegeModule {
  LoginBloc getLoginBloc(AuthRepository authRepository) =>
      LoginBloc(authRepository: authRepository);

  ForgotPasswordBloc getForgotPasswordBloc(OtpRepository otpRepository) =>
      ForgotPasswordBloc(otpRepository: otpRepository);
}
