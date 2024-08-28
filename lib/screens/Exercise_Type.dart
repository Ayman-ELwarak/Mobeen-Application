import 'package:flutter/material.dart';
import '../components/Exercise_Type_Button.dart';
import 'Exercises.dart';
class ExercisesType extends StatelessWidget {
  const ExercisesType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0 ,bottom: 10.0),
                child: Text(
                    'Lip exercises',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 70.0,right: 20.0,bottom: 50.0),
               child:  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 70),
                    decoration: BoxDecoration(
                      color: Color(0xFF8CBBB6),

                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                         ExerciseTypeButton(
                            text: 'Lip Opening',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                           ExerciseTypeButton(
                            text: 'Lip Pucker',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                        ExerciseTypeButton(
                            text: 'Retracted Smile',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                        ExerciseTypeButton(
                            text: 'Lip Closure',
                            tap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ExercisePage();
                              }));
                            },
                          ),
                      ],
                    ),
                  ),
              ),

            ],
          ),
        ),
      );
  }
}