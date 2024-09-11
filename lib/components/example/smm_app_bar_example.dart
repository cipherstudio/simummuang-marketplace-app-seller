import 'package:flutter/material.dart';
import 'package:smm_application/components/smm_app_bar.dart';

class SMMAppBarExample extends StatefulWidget {
  const SMMAppBarExample({super.key});

  @override
  State<SMMAppBarExample> createState() => _SMMAppBarExampleState();
}

class _SMMAppBarExampleState extends State<SMMAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.loginAndRegister(),
      body: Container(),
    );
  }
}
