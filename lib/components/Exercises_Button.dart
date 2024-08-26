import 'package:flutter/material.dart';
class ExercisesButton extends StatelessWidget {
  final String text;

  ExercisesButton({required this.text,this.tap});
  Function()? tap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: tap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black, backgroundColor: Color(0xFF8CBBB6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),

      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize:34 ,
          ),
        ),
      ),
    );
  }
}