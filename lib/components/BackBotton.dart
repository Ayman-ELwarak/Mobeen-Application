// ignore_for_file: file_names
import 'package:flutter/material.dart';

class BackButtonContainer {
  Container create(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0),
      decoration: const BoxDecoration(
        color: Color(0xFF5A7493),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
