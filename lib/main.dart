import 'package:flutter/material.dart';
import 'package:mobile_app/screens/Exercise_Type.dart';
import 'package:mobile_app/screens/Exercises.dart';
import 'package:mobile_app/screens/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExercisePage(),
    );
  }
}
