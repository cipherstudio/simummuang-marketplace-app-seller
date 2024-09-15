import 'package:flutter/material.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/components/smm_image_picker.dart';

class SMMImagePickerExample extends StatefulWidget {
  const SMMImagePickerExample({super.key});

  @override
  State<SMMImagePickerExample> createState() => _SMMImagePickerExampleState();
}

// store picture
class _SMMImagePickerExampleState extends State<SMMImagePickerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.loginAndRegister(),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const SMMImagePicker(),
        ],
      ),
    );
  }
}
