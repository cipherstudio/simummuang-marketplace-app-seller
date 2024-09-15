import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smm_application/themes/app_colors.dart';

/// 1. text field แบบธรรมดา
/// 2. text field E-mail
/// 3. text field obscure

class SMMTextFormField extends StatefulWidget {
  /// widget's variable
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? suffixText;
  final bool isObscure;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChanged;
  final String? validatorText;
  final String? initialValue;
  final bool isEnable;
  final Widget? tailWidget;
  final AutovalidateMode? autovalidateMode;
  final Widget? prefixIcon;
  final String? prefixText;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  /// factory general input
  factory SMMTextFormField.normal({
    Key? key,
    TextEditingController? controller,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    required bool isEnable,
    String? hintText,
    FormFieldValidator<String>? validator,
    ValueChanged<String?>? onChanged,
    AutovalidateMode? autovalidateMode,
  }) {
    decoration ??= const InputDecoration();
    // if (decoration.hintText?.isEmpty ?? true) {
    //   decoration = decoration.copyWith(hintText: 'please provide some hint.');
    // }

    return SMMTextFormField._(
      controller: controller,
      decoration: decoration,
      keyboardType: keyboardType,
      isObscure: false,
      isEnable: isEnable,
      hintText: hintText,
      validator: validator,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
    );
  }

  /// factory obscure input
  factory SMMTextFormField.obscure({
    Key? key,
    TextEditingController? controller,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    required bool isEnable,
    String? hintText,
    FormFieldValidator<String>? validator,
    ValueChanged<String?>? onChanged,
    AutovalidateMode? autovalidateMode,
  }) {
    decoration ??= const InputDecoration();
    // if (decoration.hintText?.isEmpty ?? true) {
    //   decoration = decoration.copyWith(hintText: 'please provide some hint.');
    // }

    return SMMTextFormField._(
      controller: controller,
      decoration: decoration,
      keyboardType: keyboardType,
      isObscure: true,
      isEnable: isEnable,
      hintText: hintText,
      validator: validator,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
    );
  }

  /// factory for e-mail input
  factory SMMTextFormField.email({
    Key? key,
    TextEditingController? controller,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    required bool isEnable,
    String? hintText,
    FormFieldValidator<String>? validator,
    ValueChanged<String?>? onChanged,
    AutovalidateMode? autovalidateMode,
  }) {
    decoration ??= const InputDecoration();
    // if (decoration.hintText?.isEmpty ?? true) {
    //   decoration = decoration.copyWith(hintText: 'please provide some hint.');
    // }

    return SMMTextFormField._(
      key: key,
      controller: controller,
      decoration: decoration,
      keyboardType: keyboardType,
      isObscure: false,
      isEnable: isEnable,
      hintText: hintText,
      validator: (validator == null)
          ? (value) {
              if (value!.isEmpty) {
                return null;
              }
              return EmailValidator.validate(value)
                  ? null
                  : "Please enter a valid email";
            }
          : validator,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
    );
  }

  /// _internal default constructor
  const SMMTextFormField._({
    super.key,
    this.controller,
    this.decoration,
    this.keyboardType,
    this.hintText,
    required this.isObscure,
    this.validator,
    required this.isEnable,
    this.suffixText,
    this.textInputAction,
    this.onChanged,
    this.validatorText,
    this.initialValue,
    this.tailWidget,
    this.autovalidateMode,
    this.prefixIcon,
    this.prefixText,
    this.inputFormatters,
    this.maxLength,
  });

  @override
  State<SMMTextFormField> createState() => _SMMTextFormFieldState();
}

/// text form field state.
class _SMMTextFormFieldState extends State<SMMTextFormField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = widget.isObscure ? true : false;

    super.initState();
  }

  onHidePasswordTap() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnable,
      style: const TextStyle(color: AppColors.primaryDefaultMain),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      obscureText: _passwordVisible,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      buildCounter: (BuildContext context,
              {required int currentLength,
              required int? maxLength,
              required bool isFocused}) =>
          null,
      inputFormatters: [
        if (widget.keyboardType == TextInputType.number)
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
        if (widget.keyboardType == TextInputType.phone)
          FilteringTextInputFormatter.digitsOnly,
        if (widget.inputFormatters != null) ...widget.inputFormatters!
      ],
      decoration: InputDecoration(
        // prefixStyle:
        //     CustomTextStyles.body3.copyWith(color: CustomColors.primaryColor),
        // prefixText: widget.prefixText,
        // hintStyle:
        //     CustomTextStyles.body3.copyWith(color: CustomColors.text4Color),
        hintStyle: const TextStyle(color: AppColors.primaryDefaultWeak),
        hintText: widget.decoration?.hintText ?? widget.hintText,
        // fillColor: widget.isEnable
        //     ? CustomColors.onBackground3Color
        //     : CustomColors.onBackground2Color,
        /// สำหรับปรับสีพื้นหลังทั่วทั้ง text form field
        fillColor: widget.isEnable ? Colors.white : Colors.white,
        filled: true,
        // alignLabelWithHint: true,

        /// สำหรับปรับแต่ง style เมื่อ validator เข้าเงื่อนไข
        errorStyle: const TextStyle(color: AppColors.primarySemanticErrorMain),
        // label: Text(
        //   '${widget.hintText}',
        //   style: CustomTextStyles.hint,
        // ),
        // prefixIcon: widget.prefixIcon,

        /// prefixIcon และ prefixIconConstraints สำหรับทำให้ hint text และ error text ไม่ align ในตำแหน่งเดียวกัน
        prefixIcon: Container(
          width: 0,
        ),
        prefixIconConstraints: const BoxConstraints.tightFor(width: 10),

        // suffixStyle: CustomTextStyles.body3,
        suffixIcon: widget.isObscure
            ? IconButton(
                color: AppColors.primaryDefaultMedium,
                icon: Icon(
                  _passwordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onPressed: () => onHidePasswordTap(),
              )
            : const SizedBox.shrink(),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: AppColors.primaryBrandWeak),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: AppColors.primaryBrandWeak),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          // borderSide: BorderSide(color: CustomColors.onBackground2Color),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryDefaultWeak),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        contentPadding: EdgeInsets.zero,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryDefaultWeak),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        // border: const OutlineInputBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(4)),
        //   borderSide: BorderSide(color: Colors.blue),
        //   // borderSide: BorderSide(color: CustomColors.border1Color),
        // ),
      ),
      validator: widget.validator,
      autovalidateMode:
          widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
    );
  }
}
