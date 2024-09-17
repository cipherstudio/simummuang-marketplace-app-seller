import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/components/smm_tabbar.dart';
import 'package:smm_application/features/seller_setting/bloc/seller_setting_bloc.dart';
import 'package:smm_application/features/seller_setting/view/component/detail_seller.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class SellerSettingPage extends StatelessWidget {
  const SellerSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SellerSettingBloc(),
      child: BlocBuilder<SellerSettingBloc, SellerSettingBlocState>(
          builder: (context, state) => _body(context, state)),
    );
  }

  Widget _body(BuildContext context, SellerSettingBlocState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SMMAppBar.text(
        text: 'ตั้งค่า',
        bottom: SMMTabbar(
            isScrollable: false,
            tabs: [
              SMMTab(
                isSelected: state.currentTabbarIndex == 0,
                text: 'ข้อมูลร้านค้า',
              ),
              SMMTab(
                isSelected: state.currentTabbarIndex == 1,
                text: 'รายละเอียดร้านค้า',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (state.sellerSettingPageState == SellerSettingPageState.detail)
                const DetailSeller(),
              _footer()
            ],
          ),
        ),
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
                  'บันทึกข้อมูล',
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
                  'ดูตัวอย่าง',
                  style: AppTextStyles.textMDSemibold
                      .copyWith(color: AppColors.primaryBrandMain),
                )
              ],
            ),
          ),
          SMMOutlinedButton(
            width: double.infinity,
            child: Text(
              'ยกเลิก',
              style: AppTextStyles.textMDSemibold
                  .copyWith(color: AppColors.primaryBrandMain),
            ),
          )
        ],
      ),
    );
  }
}
