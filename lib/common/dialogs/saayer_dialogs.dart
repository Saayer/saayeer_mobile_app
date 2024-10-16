import 'package:flutter/material.dart';
import 'package:saayer/common/dialogs/base_dialog.dart';
import 'package:saayer/core/services/injection/injection.dart';
import 'package:saayer/core/services/navigation/navigation_service.dart';
import 'package:saayer/core/utils/theme/saayer_theme.dart';

class SaayerDialogs {
  final BuildContext context =
      getIt<NavigationService>().mainNavigatorKey.currentContext!;

  oneBtnDialog(
      {required String title,
      required String message,
      String? buttonText,
      bool isError = true,
      void Function()? onTapDismiss}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor:
            SaayerTheme().getColorsPalette.barrierColor,
        builder: (BuildContext context) {
          return BaseDialog(
            title: title,
            message: message,
            buttonText: buttonText,
            isError: isError,
            onTapDismiss: onTapDismiss,
          );
        });
  }

  twoBtnsDialog(
      {required String title,
      required String message,
      String? buttonText,
      String? secondButtonText,
      bool isError = true,
      void Function()? onTapDismiss,
      void Function()? onSecondTapDismiss}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return BaseDialog(
            title: title,
            message: message,
            buttonText: buttonText,
            secondButtonText: secondButtonText,
            isError: isError,
            hasSecondButton: true,
            onTapDismiss: onTapDismiss,
            onSecondTapDismiss: onSecondTapDismiss,
          );
        });
  }
}
