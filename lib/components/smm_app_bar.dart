import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';

class SMMAppBar extends StatelessWidget implements PreferredSizeWidget {
  static double defaultSize = 100;

  final Widget? leading;
  final bool showBack;
  final bool automaticallyImplyLeading;
  final VoidCallback? onBackPressed;
  final Widget? title;
  final Color? backgroundColor;
  final bool? centerTitle;
  // final List<Widget> actions = List.empty(growable: true);

  factory SMMAppBar.loginAndRegister({Key? key}) {
    defaultSize = 92;
    return SMMAppBar._(
      key: key,
      showBack: false,
      automaticallyImplyLeading: true,
      title: const $AssetsIconsGen().iconSimummuengOnline.svg(),
      centerTitle: true,
    );
  }

  const SMMAppBar._({
    super.key,
    this.showBack = false,
    this.automaticallyImplyLeading = true,
    this.title,
    this.centerTitle,
    this.leading,
    this.onBackPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryBrandMain,
      title: title,
      centerTitle: centerTitle,
      leading: _buildLeading(context),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(32),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(defaultSize);

  Widget? _buildLeading(BuildContext context) {
    if (leading != null) {
      return leading;
    }

    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);

    if (showBack ||
        (automaticallyImplyLeading &&
            (parentRoute?.impliesAppBarDismissal ?? false))) {
      return Center(
        child: SizedBox.square(
          dimension: 40,
          child: IconButton(
            onPressed: () {
              if (onBackPressed != null) {
                onBackPressed?.call();
              } else {
                NavigatorState navigatorState = Navigator.of(context);
                if (navigatorState.canPop()) {
                  navigatorState.pop();
                } else {
                  SystemNavigator.pop();
                }
              }
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  List<Widget> _buildActions(
      {Widget? action1, Widget? action2, Widget? action3}) {
    List<Widget> actions = List.empty(growable: true);
    if (action1 != null) {
      actions.add(action1);
    }
    if (action2 != null) {
      actions.add(action2);
    }
    if (action3 != null) {
      actions.add(action3);
    }

    return actions;
  }
}
