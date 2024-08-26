import 'package:flutter/material.dart';
import '../components/Exercises_Button.dart';
import 'Exercise_Type.dart';
class Exercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExercisesButton(
                text: 'Lip exercises',
                tap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ExercisesType();
                  }));
                },
              ),
              SizedBox(height: 20),
              ExercisesButton(
                text: 'Tongue exercises',
                tap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ExercisesType();
                  }));
                },
              ),
              SizedBox(height: 20),
              ExercisesButton(
                text: 'Jaw exercises',
                tap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ExercisesType();
                  }));
                },
              ),
              SizedBox(height: 20),
              ExercisesButton(
                text: 'Cheek exercises',
                tap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ExercisesType();
                  }));
                },
              ),
              SizedBox(height: 20),
              ExercisesButton(text: 'Swallowing exercises',
                tap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ExercisesType();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}