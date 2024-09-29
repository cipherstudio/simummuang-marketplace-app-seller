part of 'seller_setting_bloc.dart';

enum SellerSettingPageState { profile, detail }

@freezed
class SellerSettingBlocState with _$SellerSettingBlocState {
  const factory SellerSettingBlocState(
      {@Default(UIInitial()) UIStatus status,
      @Default(SellerSettingPageState.profile)
      SellerSettingPageState sellerSettingPageState,
      SellerInfoModel? sellerInfoData,
      @Default(0) int currentTabbarIndex}) = _SellerSettingBlocState;
}
