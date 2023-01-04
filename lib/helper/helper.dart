import 'package:flutter/material.dart';

areYouSure(
  context, {
  Function? function,
  required String title,
  bool? isOrder = false,
  bool haveButtonCancel = true,
  Widget? content,
  bool mandatory = false,
}) async {
  if (true) {
    showDialog(
        context: context,
        barrierDismissible: !mandatory,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(title),
            content: content,
            actions: [
              if (haveButtonCancel)
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'cancel',
                  ),
                ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    function != null ? function() : null;
                  },
                  child: const Text(
                    'Ok',
                  )),
            ],
          );
        });
  }
}
