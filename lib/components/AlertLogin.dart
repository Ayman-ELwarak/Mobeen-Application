import 'package:flutter/material.dart';

void AlertLogin(BuildContext context, String message) {
  final double screenHeight = MediaQuery.of(context).size.height;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: (screenHeight / 3) + 120, // Increased height for button
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Add some spacing
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  // Add your "try again" logic here
                  print("Trying again..."); 
                },
                child: Text("Try Again"),
              ),
            ],
          ),
        ),
      );
    },
  );
}