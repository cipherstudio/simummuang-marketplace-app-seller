import 'package:flutter/material.dart';
import 'package:smm_application/components/example/smm_app_bar_example.dart';
import 'package:smm_application/components/example/smm_button_example.dart';
import 'package:smm_application/components/example/smm_text_form_field_example.dart';
import 'package:smm_application/components/smm_filled_button.dart';

class ExampleConponents extends StatefulWidget {
  const ExampleConponents({super.key});

  @override
  State<ExampleConponents> createState() => _ExampleConponentsState();
}

class _ExampleConponentsState extends State<ExampleConponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('components example'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          SmmFilledButton.normal(
            label: 'SMM text form field',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SmmTextFormFieldExample(),
                ),
              );
            },
          ),
          SmmFilledButton.normal(
            label: 'SMM buttons',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SMMButtonsExample(),
                ),
              );
            },
          ),
          SmmFilledButton.normal(
            label: 'SMM app bar',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SMMAppBarExample(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
