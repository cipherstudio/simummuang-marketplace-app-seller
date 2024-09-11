import 'package:flutter/material.dart';
import 'package:smm_application/components/smm_filled_button.dart';
import 'package:smm_application/components/smm_outlined_button.dart';

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
