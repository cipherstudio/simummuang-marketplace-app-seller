import 'package:flutter/material.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_application/src/dialogs/smm_dialog.dart';
import 'package:smm_application/themes/app_text_styles.dart';

enum SMMDialogResult { positive, negative }

abstract final class SMMDialogs {
  static SMMDialog<SMMDialogResult?> showCustomBody(
    BuildContext context, {
    GlobalKey? key,
    Image? image,
    String? title,
    required Widget body,
    String positiveButton = 'OK',
    String? negativeButton,
    bool useRootNavigator = true,
  }) {
    key ??= GlobalKey();
    Future<SMMDialogResult?> future = showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: useRootNavigator,
      builder: (context) {
        List<String> actions = List.empty(growable: true);
        if (negativeButton?.isNotEmpty ?? false) {
          actions.add(negativeButton!);
        }
        actions.add(positiveButton);
        return _SMMAlertDialog(
          key: key!,
          image: image,
          title: title,
          body: body,
          actions: actions,
        );
      },
    );
    return _SMMDialog<SMMDialogResult>(
      key: key,
      future: future,
    );
  }

  static SMMDialog<SMMDialogResult?> show(
    BuildContext context, {
    GlobalKey? key,
    Image? image,
    String? title,
    required String message,
    String positiveButton = 'OK',
    String? negativeButton,
    bool useRootNavigator = true,
  }) {
    key ??= GlobalKey();
    Future<SMMDialogResult?> future = showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: useRootNavigator,
      builder: (context) {
        List<String> actions = List.empty(growable: true);
        if (negativeButton?.isNotEmpty ?? false) {
          actions.add(negativeButton!);
        }
        actions.add(positiveButton);
        return _SMMAlertDialog(
          key: key!,
          image: image,
          title: title,
          message: message,
          actions: actions,
        );
      },
    );
    return _SMMDialog<SMMDialogResult>(
      key: key,
      future: future,
    );
  }

  static SMMDialog<bool?> showLoading(
    BuildContext context, {
    GlobalKey? key,
    bool useRootNavigator = true,
  }) {
    key ??= GlobalKey();
    Future<bool?> future = showDialog<bool>(
      context: context,
      barrierDismissible: false,
      useRootNavigator: useRootNavigator,
      builder: (context) {
        return _SMMLoadingDialog(
          key: key!,
          canCancel: false,
        );
      },
    );
    return _SMMDialog(
      key: key,
      future: future,
    );
  }
}

class _SMMDialog<T extends Object?> extends SMMDialog<T> {
  final GlobalKey _key;
  final Future<T?> _future;

  @override
  Future<T?> get future => _future;

  _SMMDialog({
    required GlobalKey key,
    required Future<T?> future,
  })  : _key = key,
        _future = future;

  @override
  bool isShowing() {
    return _key.currentContext != null;
  }

  @override
  void dismiss({T? result}) {
    if (isShowing()) {
      Navigator.pop(_key.currentContext!, result);
    }
  }
}

class _SMMAlertDialog extends StatelessWidget {
  final Image? image;
  final String? title;
  final String? message;
  final Widget? body;
  final List<String> actions;

  const _SMMAlertDialog({
    required GlobalKey key,
    this.image,
    this.title,
    this.message,
    this.body,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = _buildChildren(context, actions);
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          width: 312,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: Colors.white),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildChildren(BuildContext context, List<String> actions) {
    List<Widget> children = List.empty(growable: true);
    if (image != null) {
      children.add(_buildImage(image!));
    }
    if (title != null) {
      children.add(_buildTitle(title!));
    }
    if (message != null) {
      children.add(_buildMessage(message!));
    }
    if (body != null) {
      children.add(_buildBody(body!));
    }
    children.add(_buildActions(context, actions));

    return children;
  }

  Widget _buildImage(Image image) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: image,
    );
  }

  Widget _buildTitle(
    String title,
  ) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        child: Text(title,
            style: AppTextStyles.textMDRegular.copyWith(),
            textAlign: TextAlign.center));
  }

  Widget _buildMessage(
    String message,
  ) {
    return _buildBody(Text(
      message,
      style: AppTextStyles.textSMRegular.copyWith(),
    ));
  }

  Widget _buildBody(Widget body) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: body,
    );
  }

  Widget _buildActions(BuildContext context, List<String> actions) {
    List<Widget> children = List.empty(growable: true);
    for (int i = 0; i < actions.length; i++) {
      String action = actions[i];
      bool isPositiveButton = i == actions.length - 1;
      if (i > 0) {
        children.add(const SizedBox.square(dimension: 8));
      }
      if (isPositiveButton) {
        children.add(Expanded(
            child: SMMFilledButton.normal(
          label: action,
          onPressed: () => Navigator.of(context).pop(SMMDialogResult.positive),
        )));
      } else {
        children.add(Expanded(
          child: SMMOutlinedButton.normal(
            label: action,
            onPressed: () =>
                Navigator.of(context).pop(SMMDialogResult.negative),
          ),
        ));
      }
    }
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Row(
        children: children,
      ),
    );
  }
}

class _SMMLoadingDialog extends StatelessWidget {
  final bool canCancel;

  const _SMMLoadingDialog({
    required GlobalKey key,
    this.canCancel = true,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (canCancel) {
          Navigator.pop(context, true);
        }
        return Future.value(false);
      },
      child: GestureDetector(
        onTap: () {
          if (canCancel) {
            Navigator.pop(context, true);
          }
        },
        child: Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: Colors.white),
              padding: const EdgeInsets.all(24),
              child: const CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
