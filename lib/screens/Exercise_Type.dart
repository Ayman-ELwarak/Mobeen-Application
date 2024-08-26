import 'package:flutter/material.dart';
import '../components/Exercise_Type_Button.dart';
import 'Exercises.dart';
class ExercisesType extends StatelessWidget {
  const ExercisesType({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(top:20.0 ,bottom: 10.0),
                child: Expanded(
                  flex: 15,
                  child: Text(
                    'Lip exercises',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 70.0,right: 20.0,bottom: 50.0),
                child: Expanded(
                  flex: 50,
                  child: Container(
                    height: 450,
                    width: 400,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 70),
                    decoration: BoxDecoration(
                      color: Color(0xFF8CBBB6),

                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: ExerciseTypeButton(
                            text: 'Lip Opening',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: ExerciseTypeButton(
                            text: 'Lip Pucker',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: ExerciseTypeButton(
                            text: 'Retracted Smile',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: ExerciseTypeButton(
                            text: 'Lip Closure',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Optionally, add the curved design or other elements here
            ],
          ),
        ),
      ),
    );
  }
}