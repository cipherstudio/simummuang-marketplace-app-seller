import 'package:flutter/material.dart';
import 'package:smm_components/components/shared_components.dart';

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
