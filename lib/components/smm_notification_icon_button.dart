import 'package:flutter/material.dart';
import 'package:smm_application/extensions/extension.dart';

abstract class SMMNotificationIconButton extends Widget {
  factory SMMNotificationIconButton.notification({
    Key? key,
    String? notificationCounts,
  }) =>
      _SMMNotificationIconButton(
        key: key,
        icon: Icons.notifications,
        notificationCounts: notificationCounts,
        iconColor: Colors.white,
      );

  factory SMMNotificationIconButton.message({
    Key? key,
    String? notificationCounts,
  }) =>
      _SMMNotificationIconButton(
        key: key,
        icon: Icons.message,
        notificationCounts: notificationCounts,
        iconColor: Colors.white,
      );

  factory SMMNotificationIconButton.shoppingCart({
    Key? key,
    String? notificationCounts,
  }) =>
      _SMMNotificationIconButton(
        key: key,
        icon: Icons.shopping_cart,
        notificationCounts: notificationCounts,
        iconColor: Colors.white,
      );
}

class _SMMNotificationIconButton extends StatelessWidget
    implements SMMNotificationIconButton {
  final IconData icon;
  final String? notificationCounts;
  final Color iconColor;

  const _SMMNotificationIconButton({
    super.key,
    required this.icon,
    this.notificationCounts,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Stack(
        children: <Widget>[
          Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
          !notificationCounts.stringNullOrEmpty
              ? Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    constraints: BoxConstraints(
                      maxWidth: 30,
                    ),
                    child: Text(
                      notificationCounts!,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
      onPressed: () {},
    );
  }
}
