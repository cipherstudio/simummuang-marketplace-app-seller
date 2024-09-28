import 'package:flutter/material.dart';
import 'package:smm_application/src/dialogs/smm_dialog_manager.dart';
import 'package:smm_application/src/dialogs/smm_dialogs.dart';

abstract final class DialogUtils {
  static void openErrorDialog(BuildContext context, String message,
      {Function? positiveTap}) async {
    final SMMDialogResult? result = await SMMDialogManager().show(
      context,
      title: 'Fail',
      message: message,
      positiveButton: 'Confirm',
      useRootNavigator: true,
    );
    if (result == SMMDialogResult.positive && positiveTap != null) {
      positiveTap();
    }
  }
}
