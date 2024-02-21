import 'package:flutter/material.dart';

Future<void> showNoConnectionToast(String message, BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('No Connection'),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
