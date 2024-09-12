import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textaa extends StatelessWidget {
  Text child;
  Textaa({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.cover,
      child: Center(child: child),
    );
  }
}
