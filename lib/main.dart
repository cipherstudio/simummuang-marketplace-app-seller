import 'package:flutter/material.dart';
import 'package:smm_application/components/example/smm_app_bar_example.dart';
import 'package:smm_application/components/example/smm_text_form_field_example.dart';
import 'package:smm_application/components/smm_app_bar.dart';
import 'package:smm_application/components/smm_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SmmTextFormFieldExample(),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SMMAppBarExample(),
                  ),
                );
              },
              child: Container(
                color: Colors.green,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Text(
                  'Login and Register AppBar',
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
