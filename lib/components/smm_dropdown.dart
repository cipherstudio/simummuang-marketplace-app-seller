import 'package:flutter/material.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';

class SMMDropdown<T> extends StatefulWidget {
  const SMMDropdown(
      {super.key,
      required this.items,
      required this.widgetBuilder,
      this.value,
      this.onChanged,
      this.hint = '',
      this.loading = false,
      this.enable = true,
      this.tailIcon,
      this.validator,
      this.autovalidateMode,
      this.disableTextValue = ''});
  final List<T> items;
  final Function(BuildContext context, T item) widgetBuilder;
  final T? value;
  final Function(T? value)? onChanged;
  final String hint;
  final bool enable;
  final bool loading;
  final Widget? tailIcon;
  final FormFieldValidator<dynamic>? validator;
  final AutovalidateMode? autovalidateMode;
  final String disableTextValue;
  @override
  SMMDropdownState<T> createState() => SMMDropdownState<T>();
}

class SMMDropdownState<T> extends State<SMMDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return _buildDropdown(context);
  }

  FormField _buildDropdown(BuildContext context) {
    return FormField(
      autovalidateMode:
          widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
      initialValue: widget.value,
      validator: widget.validator ??
          (value) {
            if (value == null) {
              return 'กรุณา${widget.hint}';
            }
            return null;
          },
      builder: (FormFieldState<dynamic> field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: widget.enable
                    ? AppColors.primaryDefaultInverseMain
                    : AppColors.primaryDefaultInverseMain,
                borderRadius: BorderRadius.circular(4),
                border: widget.enable
                    ? Border.all(
                        color: field.hasError
                            ? AppColors.primaryBrandMain
                            : AppColors.primaryDefaultWeak)
                    : null,
              ),
              child: widget.loading
                  ? const CircularProgressIndicator()
                  : widget.enable
                      ? DropdownButtonHideUnderline(
                          child: DropdownButton<T>(
                            isExpanded: false,
                            value: widget.value,
                            borderRadius: BorderRadius.circular(12),
                            focusColor: Colors.white,
                            dropdownColor: AppColors.primaryDefaultInverseMain,
                            icon: widget.tailIcon ??
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: AppColors.primaryDefaultWeak,
                                ),
                            hint: Text(
                              'เลือก${widget.hint}',
                              style: AppTextStyles.textMDRegular.copyWith(
                                  color: AppColors.primaryDefaultWeak),
                            ),
                            items: (widget.items)
                                .map<DropdownMenuItem<T>>((T value) {
                              return DropdownMenuItem<T>(
                                value: value,
                                child: widget.widgetBuilder(context, value),
                              );
                            }).toList(),
                            onChanged: (T? value) {
                              if (value != null) {
                                widget.onChanged!(value);
                                field.didChange(value);
                              }
                            },
                            selectedItemBuilder: (BuildContext context) {
                              return widget.items.map<Widget>((T item) {
                                return Container(
                                    alignment: Alignment.center,
                                    child: widget.widgetBuilder(context, item));
                              }).toList();
                            },
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            widget.disableTextValue,
                            style: AppTextStyles.textMDRegular,
                          ),
                        ),
            ),
            if (field.errorText != null)
              Padding(
                padding: const EdgeInsets.only(top: 3, left: 20),
                child: Text(
                  field.errorText!,
                  style: AppTextStyles.textXSRegular
                      .copyWith(color: AppColors.primaryBrandMain),
                ),
              )
          ],
        );
      },
    );
  }
}
