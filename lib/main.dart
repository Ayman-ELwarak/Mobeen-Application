import 'package:flutter/material.dart';
import 'package:mobile_app/screens/HomePage.dart';
import 'package:mobile_app/screens/rehabilitation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
