import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_state.freezed.dart';

@freezed
class AlertState with _$AlertState {
  const factory AlertState.dialogState({
    String? title,
    required String message,
    @Default('OK') String positive,
  }) = DialogState;

  const factory AlertState.silent() = Silent;
}

mixin AlertStateCompatible {
  handleAlertState(BuildContext context, AlertState state) async {
    state.when(
      dialogState: (title, message, positive) {
        _showDialog(context,
            title: title, message: message, positive: positive);
      },
      silent: () {},
    );
  }

  void _showDialog(
    BuildContext context, {
    String? title,
    required String message,
    required String positive,
  }) {
    showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: title != null ? Text(title) : null,
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(positive),
            ),
          ],
        );
      },
    );
  }
}
