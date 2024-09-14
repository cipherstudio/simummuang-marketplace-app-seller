import 'package:flutter/material.dart';
import 'package:smm_application/generated/assets.gen.dart';

class SMMIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? icon;
  final Decoration? decoration;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;

  factory SMMIconButton.facebook({
    Key? key,
    VoidCallback? onTap,
  }) {
    return SMMIconButton._(
      key: key,
      width: 48,
      height: 48,
      icon: const $AssetsIconsGen().iconSigninFacebook.svg(),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
    );
  }

  factory SMMIconButton.google({
    Key? key,
    VoidCallback? onTap,
  }) {
    return SMMIconButton._(
      key: key,
      width: 48,
      height: 48,
      icon: const $AssetsIconsGen().iconSigninGoogle.svg(),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
    );
  }

  factory SMMIconButton.line({
    Key? key,
    VoidCallback? onTap,
  }) {
    return SMMIconButton._(
      key: key,
      width: 48,
      height: 48,
      icon: const $AssetsIconsGen().iconSigninLine.svg(),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
    );
  }

  const SMMIconButton._({
    super.key,
    this.width,
    this.height,
    this.icon,
    this.decoration,
    this.borderRadius,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        icon ?? const SizedBox.shrink(),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: borderRadius,
            child: Container(
              width: width,
              height: height,
              decoration: decoration,
            ),
          ),
        )
      ],
    );
  }
}
