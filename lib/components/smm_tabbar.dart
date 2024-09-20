import 'package:flutter/material.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';

class SMMTabbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  const SMMTabbar({
    super.key,
    required this.tabs,
    this.isScrollable = true,
    this.indicatorSize = TabBarIndicatorSize.tab,
    required this.currentIndex,
    required this.onTabChange,
    this.controller,
    this.labelPadding,
  });

  final List<SMMTab> tabs;
  final bool isScrollable;
  final TabBarIndicatorSize indicatorSize;
  final int currentIndex;
  final Function(int) onTabChange;
  final TabController? controller;
  final EdgeInsetsGeometry? labelPadding;

  @override
  State createState() => _SMMTabbar();
}

class _SMMTabbar extends State<SMMTabbar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.tabs.length,
      initialIndex: widget.currentIndex,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(SMMTabbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _handleControllerChangeIndex(widget.currentIndex, oldWidget.currentIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection(int value) {
    widget.onTabChange(value);
  }

  void _handleControllerChangeIndex(int current, int previous) {
    if (current != previous && widget.controller == null) {
      _tabController.animateTo(widget.currentIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryDefaultInverseMain,
      child: DefaultTabController(
        length: widget.tabs.length,
        initialIndex: widget.currentIndex,
        child: TabBar(
          controller: widget.controller ?? _tabController,
          indicatorColor: AppColors.primaryBrandMain,
          indicatorSize: widget.indicatorSize,
          tabAlignment: widget.isScrollable ? TabAlignment.start : null,
          indicatorWeight: 2,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primaryBrandMain,
              width: 2,
            ),
          ),
          unselectedLabelColor: AppColors.primaryDefaultMain,
          unselectedLabelStyle: AppTextStyles.textMDRegular,
          isScrollable: widget.isScrollable,
          labelPadding:
              widget.labelPadding ?? const EdgeInsets.symmetric(horizontal: 16),
          labelStyle: AppTextStyles.textMDRegular,
          labelColor: AppColors.primaryDefaultMain,
          tabs: widget.tabs
              .map((tab) => Tab(
                    height: 48,
                    child: tab,
                  ))
              .toList(),
          onTap: (value) {
            _handleTabSelection(value);
          },
        ),
      ),
    );
  }
}

class SMMTab extends StatelessWidget {
  final Widget? icon;

  final String? text;
  final bool isSelected;

  const SMMTab({
    super.key,
    this.icon,
    this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor =
        isSelected ? AppColors.primaryBrandMain : AppColors.primaryDefaultMain;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (icon != null) ...[
          SizedBox.square(
            dimension: 24,
            child: icon,
          )
        ],
        const SizedBox(
          width: 8,
        ),
        Text(
          text ?? '',
          style: AppTextStyles.textMDRegular.copyWith(color: iconColor),
        )
      ],
    );
  }
}
