import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExerciseTypeButton extends StatelessWidget {
  final String text;

  ExerciseTypeButton({super.key, required this.text,this.tap});
  Function()? tap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.symmetric(),
          ),
          onPressed: tap,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}