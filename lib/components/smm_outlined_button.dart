import 'package:flutter/material.dart';

class SMMOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;

  factory SMMOutlinedButton({
    Key? key,
    Widget? child,
    VoidCallback? onPressed,
    double? width,
    double? height,
  }) {
    return SMMOutlinedButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      child: child,
    );
  }

  factory SMMOutlinedButton.normal({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
  }) {
    return SMMOutlinedButton._(
      key: key,
      onPressed: onPressed,
      width: width,
      height: height,
      child: Text(
        label,
        style: const TextStyle(color: Color.fromRGBO(237, 27, 36, 1.0)),
      ),
    );
  }

  const SMMOutlinedButton._({
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
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1.0,
            color: Color.fromRGBO(
              235,
              235,
              235,
              1.0,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        child: child,
      ),
    );
  }
}
