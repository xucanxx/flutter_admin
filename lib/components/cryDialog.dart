import 'package:flutter/material.dart';
import '../generated/l10n.dart';

void cryAlert(BuildContext context, String content) {
  cryAlertWidget(context, Text(content));
}

void cryAlertWidget(BuildContext context, Widget content) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(S.of(context).information),
        content: content,
        actions: <Widget>[
          TextButton(
            child: Text(S.of(context).cancel),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void cryConfirm(BuildContext context, String content, onConfirm) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(S.of(context).information),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            child: Text(S.of(context).cancel),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text(S.of(context).confirm),
            onPressed: onConfirm,
          ),
        ],
      );
    },
  );
}

cryDialog({
  required BuildContext context,
  required String title,
  required Widget body,
  Future? then,
  double? width,
  double? height,
}) {
  AppBar header = AppBar(
    title: Text(title),
  );
  return showDialog(
    context: context,
    builder: (BuildContext context) => Dialog(
      child: Container(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            header,
            body,
          ],
        ),
      ),
    ),
  );
}
