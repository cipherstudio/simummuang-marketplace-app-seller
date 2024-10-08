import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:smm_seller_application/core/keys/app_keys.dart';

import 'package:smm_seller_application/translation/generated/l10n.dart';
// import 'package:smm_seller_application/widgets/custom_checkbox.dart';
// import 'package:smm_seller_application/widgets/external_login.dart';
import 'package:smm_seller_application/router/app_router.dart';
import 'package:smm_components/components/example_components.dart';
import 'package:smm_components/components/shared_components.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(Trans.current.hello_world),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Trans.current.hello_world,
              style: const TextStyle(fontFamily: AppKeys.fontFamily),
            ),
            // SMMCheckbox(),
            // SMMCheckbox.withText(text: 'ttttttttt'),
            // ExternalLogin(
            //   title: Trans.current.register_external_title,
            //   detail: Trans.current.register_external_detail,
            //   textButton: Trans.current.register_external_text_button,
            // ),
            SMMFilledButton.normal(
              label: 'go to example components',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExampleConponents(),
                  ),
                );
              },
            ),
            SMMFilledButton.normal(
              label: 'go to login page',
              onPressed: () {
                context.pushNamed(AppRouter.loginPageNamed);
              },
            ),
            SMMFilledButton.normal(
              label: 'go to register page',
              onPressed: () {
                context.pushNamed(AppRouter.registerPageNamed);
              },
            ),

            SMMFilledButton.normal(
              label: 'go to forgot password page',
              onPressed: () {
                context.pushNamed(AppRouter.forgotPasswordPageNamed);
              },
            ),
            SMMFilledButton.normal(
              label: 'go to set new password page.',
              onPressed: () {
                context.pushNamed(AppRouter.setNewPasswordNamed);
              },
            ),
            SMMFilledButton.normal(
              label: 'go to seller setting',
              onPressed: () {
                context.pushNamed(AppRouter.sellerSettingPageNamed);
              },
            ),
            SMMFilledButton.normal(
              label: 'My Account.',
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
      ),
    );
  }
}
