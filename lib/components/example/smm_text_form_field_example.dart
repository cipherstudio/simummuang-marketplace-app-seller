import 'package:flutter/material.dart';
import 'package:smm_application/components/smm_text_form_field.dart';

class SmmTextFormFieldExample extends StatefulWidget {
  const SmmTextFormFieldExample({super.key});

  @override
  State<SmmTextFormFieldExample> createState() =>
      _SmmTextFormFieldExampleState();
}

class _SmmTextFormFieldExampleState extends State<SmmTextFormFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SMMTextFormField.general(
            isEnable: true,
            hintText: 'กรุณาระบุชื่อ',
            validator: (v) {
              if (v!.isEmpty == true) {
                return 'กรุณาระบุชื่อนะจ๊ะ';
              } else {
                return null;
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SMMTextFormField.obscure(
            isEnable: true,
            hintText: 'กรุณาระบุรหัสผ่าน',
            // ignore: body_might_complete_normally_nullable
            validator: (value) {
              if (value!.isNotEmpty) {
                if (value.length < 6) {
                  return 'อย่างน้อย 6 ตัวอักษร';
                }
              } else {
                return null;
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SMMTextFormField.email(
            isEnable: true,
            hintText: 'กรุณาระบุ email',
          ),
        ),
      ],
    );
  }
}
