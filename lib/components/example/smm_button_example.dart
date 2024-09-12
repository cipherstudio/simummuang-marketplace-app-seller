import 'package:flutter/material.dart';
import 'package:smm_application/components/smm_filled_button.dart';
import 'package:smm_application/components/smm_outlined_button.dart';
import 'package:smm_application/themes/app_colors.dart';

class SMMButtonsExample extends StatefulWidget {
  const SMMButtonsExample({super.key});

  @override
  State<SMMButtonsExample> createState() => _SMMButtonsExampleState();
}

class _SMMButtonsExampleState extends State<SMMButtonsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('smm buttons'),
      ),
      body: Column(
        children: [
          SMMFilledButton.normal(
            width: double.infinity,
            label: 'เข้าสู่ระบบ',
            onPressed: () {},
          ),
          SMMOutlinedButton.normal(
            width: double.infinity,
            label: 'label',
            onPressed: () {},
          ),
          SMMOutlinedButton.normal(
            width: double.infinity,
            label: 'หากยังไม่ได้รับ OTP? ขอรหัส OTP อีกครั้ง (01:59 นาที)',
            onPressed: () {},
            textColor: AppColors.primaryBrandMain,
            outlineColor: AppColors.primaryBrandMain,
          ),
        ],
      ),
    );
  }
}
