import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String? message;

  const ErrorDialog({
    this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Center(
            child: Text('Ok'),
          ),
        )
      ],
    );
  }
}
