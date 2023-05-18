import 'package:flutter/material.dart';

class CustomConfirmationDialog extends StatelessWidget {
  final String title;
  final String content;
  final String yesText;
  final String noText;
  final VoidCallback onYesSelected;

  const CustomConfirmationDialog({
    super.key,
    required this.title,
    required this.content,
    required this.yesText,
    required this.noText,
    required this.onYesSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(noText),
        ),
        ElevatedButton(
          onPressed: onYesSelected,
          child: Text(yesText),
        ),
      ],
    );
  }
}