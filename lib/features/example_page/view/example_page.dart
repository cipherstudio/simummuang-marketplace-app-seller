import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/example_components.dart';
import 'package:smm_application/components/smm_filled_button.dart';
import 'package:smm_application/features/forgot_password/view/forgot_password_page.dart';
import 'package:smm_application/features/login_page/view/login_page.dart';
import 'package:smm_application/features/set_new_password/view/set_new_password_page.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';
// import 'package:smm_application/widgets/custom_checkbox.dart';
// import 'package:smm_application/widgets/external_login.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';
import 'package:smm_application/components/smm_checkbox.dart';
import 'package:smm_application/components/external_login.dart';

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
              style: AppTextStyles.textMDRegular,
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
                context.pushNamed(AppRouter.forgotPasswordPageNamed);
              },
            ),
            SMMFilledButton.normal(
              label: 'go to login page',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
            SMMFilledButton.normal(
              label: 'go to set new password page.',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SetNewPasswordPage(),
                  ),
                );
              },
            ),
            SMMFilledButton.normal(
              label: 'go to ForgotPasswordPage',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
