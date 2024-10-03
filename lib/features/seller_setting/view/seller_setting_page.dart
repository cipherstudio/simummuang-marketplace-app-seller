import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_application/domain/data/models/seller_info/seller_info_model.dart';
import 'package:smm_application/features/seller_setting/bloc/seller_setting_bloc.dart';
import 'package:smm_application/features/seller_setting/view/component/seller_setting_detail_seller.dart';
import 'package:smm_application/features/seller_setting/view/component/seller_setting_store_info.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/injector/app_injector.dart';
import 'package:smm_application/src/dialogs/smm_dialog_manager.dart';
import 'package:smm_application/translation/generated/l10n.dart';
import 'package:smm_application/utils/dialog_utils.dart';
import 'package:smm_components/themes/app_colors.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class SellerSettingPage extends StatelessWidget {
  const SellerSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SMMDialogManager dialogManager = SMMDialogManager();
    final SellerSettingBloc sellerSettingBloc =
        Injector.instance<SellerSettingBloc>();
    return BlocProvider.value(
      value: sellerSettingBloc..add(const SellerSettingBlocEvent.init()),
      child: BlocConsumer<SellerSettingBloc, SellerSettingBlocState>(
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
      }, builder: (context, state) {
        return _body(context, state);
      }),
    );
  }

  Widget _body(BuildContext context, SellerSettingBlocState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SMMAppBar.text(
        text: Trans.current.seller_setting_title,
        bottom: SMMTabbar(
            isScrollable: false,
            tabs: [
              SMMTab(
                isSelected: state.currentTabbarIndex == 0,
                text: Trans.current.seller_setting_tab_1,
              ),
              SMMTab(
                isSelected: state.currentTabbarIndex == 1,
                text: Trans.current.seller_setting_tab_2,
              )
            ],
            currentIndex: state.currentTabbarIndex,
            onTabChange: (index) {
              context
                  .read<SellerSettingBloc>()
                  .add(SellerSettingBlocEvent.tabbar(index));
            }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            controller: context.read<SellerSettingBloc>().scrollController,
            child: state.status.whenOrNull(
              initial: () {
                return const SizedBox.shrink();
              },
              loading: () {
                return const SizedBox.shrink();
              },
              loadFailed: (message, error) {
                return const SizedBox.shrink();
              },
              loadSuccess: (message) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (state.sellerSettingPageState ==
                        SellerSettingPageState.detail)
                      const SellerSettingDetailSeller(),
                    if (state.sellerSettingPageState ==
                        SellerSettingPageState.profile)
                      SellerSettingStoreInfo(
                        sellerInfoModel: state.sellerInfoData ??
                            SellerInfoModel.fromJson({}),
                      ),
                    _footer()
                  ],
                );
              },
            )),
      ),
    );
  }

  Widget _footer() {
    return Container(
      color: AppColors.primaryDefaultInverseMain,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SMMFilledButton(
            width: double.infinity,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const $AssetsIconsGen().iconSave.svg(),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  Trans.current.seller_setting_save,
                  style: AppTextStyles.textMDSemibold
                      .copyWith(color: AppColors.primaryDefaultInverseMain),
                )
              ],
            ),
          ),
          SMMOutlinedButton(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const $AssetsIconsGen().iconPreview.svg(),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  Trans.current.seller_setting_view,
                  style: AppTextStyles.textMDSemibold
                      .copyWith(color: AppColors.primaryBrandMain),
                )
              ],
            ),
          ),
          SMMOutlinedButton(
            width: double.infinity,
            child: Text(
              Trans.current.seller_setting_cancle,
              style: AppTextStyles.textMDSemibold
                  .copyWith(color: AppColors.primaryBrandMain),
            ),
          )
        ],
      ),
    );
  }
}
