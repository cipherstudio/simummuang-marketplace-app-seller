import 'package:flutter/material.dart';
import 'package:smm_application/components/smm_app_bar.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.myAccount(),
      body: const Placeholder(),
    );
  }
}
