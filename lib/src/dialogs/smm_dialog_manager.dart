import 'package:flutter/material.dart';
import 'package:smm_seller_application/src/dialogs/smm_dialogs.dart';
import 'package:smm_seller_application/src/dialogs/smm_dialog.dart';

class SMMDialogManager {
  final GlobalKey _alertKey = GlobalKey();
  final GlobalKey _loadingKey = GlobalKey();

  SMMDialog<SMMDialogResult?>? _alertDialog;
  SMMDialog<bool?>? _loadingDialog;

  bool isAlertDialogShowing() {
    return _alertDialog?.isShowing() ?? false;
  }

  bool isLoadingDialogShowing() {
    return _loadingDialog?.isShowing() ?? false;
  }

  void dismissAlertDialog({SMMDialogResult? result}) {
    if (isAlertDialogShowing()) {
      _alertDialog?.dismiss(result: result);
      _alertDialog = null;
    }
  }

  void dismissLoadingDialog({bool? result}) {
    if (isLoadingDialogShowing()) {
      _loadingDialog?.dismiss(result: result);
      _loadingDialog = null;
    }
  }

  void dismiss() {
    dismissAlertDialog();
    dismissLoadingDialog();
  }

  Future<SMMDialogResult?> showCustomBody(
    BuildContext context, {
    Image? image,
    String? title,
    required Widget body,
    String positiveButton = 'OK',
    String? negativeButton,
    bool useRootNavigator = true,
  }) {
    dismissAlertDialog();
    _alertDialog = SMMDialogs.showCustomBody(
      context,
      key: _alertKey,
      image: image,
      title: title,
      body: body,
      positiveButton: positiveButton,
      negativeButton: negativeButton,
      useRootNavigator: useRootNavigator,
    );
    return _alertDialog!.future;
  }

  Future<SMMDialogResult?> show(
    BuildContext context, {
    Image? image,
    String? title,
    required String message,
    String positiveButton = 'OK',
    String? negativeButton,
    bool useRootNavigator = true,
  }) {
    dismissAlertDialog();
    _alertDialog = SMMDialogs.show(
      context,
      key: _alertKey,
      image: image,
      title: title,
      message: message,
      positiveButton: positiveButton,
      negativeButton: negativeButton,
      useRootNavigator: useRootNavigator,
    );
    return _alertDialog!.future;
  }

  Future<bool?> showLoading(
    BuildContext context, {
    bool useRootNavigator = true,
  }) {
    dismissLoadingDialog();
    _loadingDialog = SMMDialogs.showLoading(
      context,
      key: _loadingKey,
      useRootNavigator: useRootNavigator,
    );
    return _loadingDialog!.future;
  }
}
