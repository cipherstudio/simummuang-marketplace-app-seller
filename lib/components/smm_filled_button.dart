import 'package:flutter/material.dart';

class SMMFilledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;

  factory SMMFilledButton({
    Key? key,
    Widget? child,
    VoidCallback? onPressed,
    double? width,
    double? height,
  }) {
    return SMMFilledButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      child: child,
    );
  }

  factory SMMFilledButton.normal({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
  }) {
    return SMMFilledButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  const SMMFilledButton._({
    super.key,
    this.onPressed,
    this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          backgroundColor: const Color.fromRGBO(237, 27, 36, 1.0),
        ),
        child: child,
      ),
    );
  }
}
