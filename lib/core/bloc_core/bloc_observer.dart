// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver();

  @override
  void onEvent(Bloc bloc, Object? event) {
    print(bloc.state);
    super.onEvent(bloc, event);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('$bloc was created');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('$bloc was closed');
  }
}
