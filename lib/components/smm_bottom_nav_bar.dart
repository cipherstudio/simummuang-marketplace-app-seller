import 'package:flutter/material.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class SMMBottomNavBar extends StatefulWidget {
  final void Function(int index) onItemTapped;
  final int selectedIndex;
  const SMMBottomNavBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  @override
  State<SMMBottomNavBar> createState() => _SMMBottomNavBarState();
}

class _SMMBottomNavBarState extends State<SMMBottomNavBar> {
  int? _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onItemTapped(index);
    });
  }

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shadowColor: Colors.black,
      color: Colors.white,
      elevation: 0,
      notchMargin: 0,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: Column(
              children: [
                (_selectedIndex == 0)
                    ? const $AssetsIconsGen().iconFirstPageBottomNav.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColors.primaryBrandMain,
                            BlendMode.srcIn,
                          ),
                        )
                    : const $AssetsIconsGen().iconFirstPageBottomNav.svg(),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  Trans.current.bottom_nav_first_page_label,
                  style: AppTextStyles.textXSRegular.copyWith(
                    color: (_selectedIndex == 0)
                        ? AppColors.primaryBrandMain
                        : AppColors.primaryDefaultMedium,
                  ),
                ),
              ],
            ),
            onTap: () => _onItemTapped(0),
          ),
          InkWell(
            child: Column(
              children: [
                (_selectedIndex == 1)
                    ? const $AssetsIconsGen().iconForYouBottomNav.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColors.primaryBrandMain,
                            BlendMode.srcIn,
                          ),
                        )
                    : const $AssetsIconsGen().iconForYouBottomNav.svg(),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  Trans.current.bottom_nav_for_you_page_label,
                  style: AppTextStyles.textXSRegular.copyWith(
                    color: (_selectedIndex == 1)
                        ? AppColors.primaryBrandMain
                        : AppColors.primaryDefaultMedium,
                  ),
                ),
              ],
            ),
            onTap: () => _onItemTapped(1),
          ),
          InkWell(
            child: Column(
              children: [
                (_selectedIndex == 2)
                    ? const $AssetsIconsGen().iconProductsBottomNav.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColors.primaryBrandMain,
                            BlendMode.srcIn,
                          ),
                        )
                    : const $AssetsIconsGen().iconProductsBottomNav.svg(),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  Trans.current.bottom_nav_products_page_label,
                  style: AppTextStyles.textXSRegular.copyWith(
                    color: (_selectedIndex == 2)
                        ? AppColors.primaryBrandMain
                        : AppColors.primaryDefaultMedium,
                  ),
                ),
              ],
            ),
            onTap: () => _onItemTapped(2),
          ),
          InkWell(
            child: Column(
              children: [
                (_selectedIndex == 3)
                    ? const $AssetsIconsGen().iconOrdersBottomNav.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColors.primaryBrandMain,
                            BlendMode.srcIn,
                          ),
                        )
                    : const $AssetsIconsGen().iconOrdersBottomNav.svg(),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  Trans.current.bottom_nav_orders_page_label,
                  style: AppTextStyles.textXSRegular.copyWith(
                    color: (_selectedIndex == 3)
                        ? AppColors.primaryBrandMain
                        : AppColors.primaryDefaultMedium,
                  ),
                ),
              ],
            ),
            onTap: () => _onItemTapped(3),
          ),
          InkWell(
            child: Column(
              children: [
                (_selectedIndex == 4)
                    ? const $AssetsIconsGen().iconAccountBottomNav.svg(
                          colorFilter: const ColorFilter.mode(
                            AppColors.primaryBrandMain,
                            BlendMode.srcIn,
                          ),
                        )
                    : const $AssetsIconsGen().iconAccountBottomNav.svg(),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  Trans.current.bottom_nav_account_page_label,
                  style: AppTextStyles.textXSRegular.copyWith(
                    color: (_selectedIndex == 4)
                        ? AppColors.primaryBrandMain
                        : AppColors.primaryDefaultMedium,
                  ),
                ),
              ],
            ),
            onTap: () => _onItemTapped(4),
          )
        ],
      ),
    );
  }
}
