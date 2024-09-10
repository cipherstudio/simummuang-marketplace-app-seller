import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/features/example_page/view/example_page.dart';

class AppRouter {
  AppRouter({this.rootKey});
  final GlobalKey<NavigatorState>? rootKey;
  static const String appDirector = 'appDirector';
  static const String appDirectorPath = '/';

  static const String examplePageNamed = 'example';
  static const String examplePagePath = '/example';

  static GoRouter router() {
    return GoRouter(
      routes: [
        GoRoute(
          path: appDirectorPath,
          pageBuilder: (context, state) {
            return MaterialPage<void>(
                key: state.pageKey, child: const ExamplePage());
          },
          routes: const [],
        ),
      ],
    );
  }
}
