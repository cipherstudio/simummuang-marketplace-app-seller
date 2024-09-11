import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smm_application/components/smm_app_bar.dart';
import 'package:smm_application/components/smm_filled_button.dart';
import 'package:smm_application/components/smm_outlined_button.dart';

class SMMFilledButtonExample extends StatefulWidget {
  const SMMFilledButtonExample({super.key});

  @override
  State<SMMFilledButtonExample> createState() => _SMMFilledButtonExampleState();
}

class _SMMFilledButtonExampleState extends State<SMMFilledButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.loginAndRegister(),
      body: Column(
        children: [
          SmmFilledButton.normal(
            width: double.infinity,
            label: 'เข้าสู่ระบบ',
            onPressed: () {},
          ),
          SMMOutlinedButton.normal(
            width: double.infinity,
            label: 'label',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
