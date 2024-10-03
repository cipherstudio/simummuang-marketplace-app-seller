import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_components/components/smm_bottom_nav_bar.dart';

class ShellRouteNavBar extends StatefulWidget {
  final Widget child;
  final Uri currentRouteUri;

  const ShellRouteNavBar({
    super.key,
    required this.child,
    required this.currentRouteUri,
  });

  @override
  State<ShellRouteNavBar> createState() => _ShellRouteNavBarState();
}

class _ShellRouteNavBarState extends State<ShellRouteNavBar> {
  int _selectedIndex = 0;

  static const List _widgetRoutesName = [AppRouter.myAccountPageNamed];
  static const List _routeUriList = [AppRouter.myAccountPagePath];

  @override
  void initState() {
    _routeUriList.asMap().forEach((idx, value) {
      if (value.toString().contains(widget.currentRouteUri.toString())) {
        _selectedIndex = idx;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 243, 243, 1.0),
      body: widget.child,
      bottomNavigationBar: SMMBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          if (context.mounted) {
            if (index != _selectedIndex) {
              setState(() {
                _selectedIndex = index;
                context.goNamed(_widgetRoutesName.elementAt(index));
              });
            }
          }
        },
      ),
    );
  }
}
