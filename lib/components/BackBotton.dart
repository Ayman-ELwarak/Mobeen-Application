import 'package:flutter/material.dart';

class BackButtonContainer {
  Container create(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0),
      decoration: const BoxDecoration(
        color: Color(0xFF1E3A3D),
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
