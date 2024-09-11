import 'package:flutter/material.dart';

class SmmFilledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;

  factory SmmFilledButton({
    Key? key,
    Widget? child,
    VoidCallback? onPressed,
    double? width,
    double? height,
  }) {
    return SmmFilledButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      child: child,
    );
  }

  factory SmmFilledButton.normal({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
  }) {
    return SmmFilledButton._(
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

  const SmmFilledButton._({
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
