import 'package:flutter/material.dart';
import 'package:smm_application/themes/app_colors.dart';

class SMMOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;
  final Color? outlineColor;
  final OutlinedBorder? shape;

  factory SMMOutlinedButton({
    Key? key,
    Widget? child,
    VoidCallback? onPressed,
    double? width,
    double? height,
    Color? outlineColor,
    OutlinedBorder? shape,
  }) {
    return SMMOutlinedButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      outlineColor: outlineColor,
      shape: shape,
      child: child,
    );
  }

  factory SMMOutlinedButton.normal({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
    Color? outlineColor,
    Color? textColor,
    OutlinedBorder? shape,
  }) {
    return SMMOutlinedButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      outlineColor: outlineColor,
      shape: shape,
      child: Text(
        label,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: textColor ?? AppColors.primaryBrandMain,
        ),
      ),
    );
  }

  const SMMOutlinedButton._({
    super.key,
    this.onPressed,
    this.child,
    this.width,
    this.height,
    this.outlineColor,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: outlineColor ?? AppColors.primaryDefaultLight,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: (shape != null)
              ? shape
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
        ),
        child: child,
      ),
    );
  }
}
