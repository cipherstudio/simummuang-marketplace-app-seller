import 'package:flutter/material.dart';
import 'package:smm_application/components/example_components.dart';
import 'package:smm_application/components/smm_filled_button.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({
    super.key,
  });

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(Trans.current.hello_world),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Trans.current.hello_world,
              style: AppTextStyles.body1,
            ),
            Text(
              'Text',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SmmFilledButton.normal(
              label: 'go to example components',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExampleConponents(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
