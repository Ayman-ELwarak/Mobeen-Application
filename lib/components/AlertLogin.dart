import 'package:flutter/material.dart';

void AlertLogin(BuildContext context, String title, String message, String botton) {
  showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              child: Text(botton),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
}