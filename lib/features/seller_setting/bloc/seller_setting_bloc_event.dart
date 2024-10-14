part of 'seller_setting_bloc.dart';

@freezed
class SellerSettingBlocEvent with _$SellerSettingBlocEvent {
  const factory SellerSettingBlocEvent.init() = _Initial;
  const factory SellerSettingBlocEvent.loadData() = _LoadData;
  const factory SellerSettingBlocEvent.tabbar(int index) = _TabbarTap;
}
