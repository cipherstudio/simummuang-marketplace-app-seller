import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/example/smm_app_bar_example.dart';
import 'package:smm_application/components/example/smm_app_bar_main_app_bar_example.dart';
import 'package:smm_application/components/example/smm_button_example.dart';
import 'package:smm_application/components/example/smm_image_picker_example.dart';
import 'package:smm_application/components/example/smm_text_form_field_example.dart';
import 'package:smm_application/components/smm_filled_button.dart';
import 'package:smm_application/router/app_router.dart';

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
          SMMFilledButton.normal(
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
          SMMFilledButton.normal(
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
          SMMFilledButton.normal(
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
          SMMFilledButton.normal(
            label: 'SMM image picker',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SMMImagePickerExample(),
                ),
              );
            },
          ),
          SMMFilledButton.normal(
            label: 'SMM app bar (main app bar)',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SMMAppBarMainAppBarExample(),
                ),
              );
            },
          ),
          SMMFilledButton.normal(
            label: 'bottom navigation example',
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const BottomNavExample(c,),
              //   ),
              // );
              context.goNamed(AppRouter.myAccountPageNamed);
            },
          ),
        ],
      ),
    );
  }
}
