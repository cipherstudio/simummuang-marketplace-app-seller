//  class SMMAppBar extends StatelessWidget implements PreferredSizeWidget

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smm_application/generated/assets.gen.dart';

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

  factory SMMAppBar.loginAndRegister() {
    defaultSize = 92;
    return SMMAppBar._(
      showBack: false,
      automaticallyImplyLeading: true,
      title: const $AssetsIconsGen().iconSimummuengOnline.svg(),
      centerTitle: true,
    );
  }

  const SMMAppBar._({
    super.key,
    this.leading,
    this.showBack = false,
    this.automaticallyImplyLeading = true,
    this.onBackPressed,
    this.title,
    this.backgroundColor,
    this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          backgroundColor ?? const Color.fromRGBO(237, 26, 37, 1.0),
      title: title,
      centerTitle: centerTitle,
      leading: _buildLeading(context),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(32),
        ),
      ),
      // actions: const [
      //   Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Text('action 1'),
      //   ),
      //   Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Text('action 2'),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text('action 3'),
      //   )
      // ],
      // leading: _buildLeading(context),
      // leadingWidth: 48,
      // backgroundColor: backgroundColor,
      // elevation: elevation ?? 0,
      // scrolledUnderElevation: scrolledUnderElevation ?? 0,
      // title: title,
      // titleSpacing: 8,
      // centerTitle: centerTitle,
      // automaticallyImplyLeading: false,
      // actions: actions,
      // actionsIconTheme: IconTheme.of(context).copyWith(size: 24),
      // forceMaterialTransparency: forceMaterialTransparency,
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
