import 'package:injectable/injectable.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';
import 'package:smm_application/domain/repository/seller_info_repository.dart';
import 'package:smm_application/features/login_page/bloc/login_bloc.dart';
import 'package:smm_application/features/seller_setting/bloc/seller_setting_bloc.dart';
import 'package:smm_application/features/set_new_password/bloc/set_new_password_bloc.dart';

@module
abstract class BlocPrivilegeModule {
  LoginBloc getLoginBloc(AuthRepository authRepository) =>
      LoginBloc(authRepository: authRepository);

  SetNewPasswordBloc getSetNewPasswordBloc(AuthRepository authRepository) =>
      SetNewPasswordBloc(authRepository: authRepository);

  SellerSettingBloc getSellerSettingBloc(
          SellerInfoRepository sellerInfoRepository) =>
      SellerSettingBloc(sellerInfoRepository: sellerInfoRepository);
}
