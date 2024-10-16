 import 'package:flutter/material.dart';

void CorrectAlert(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: (screenheight / 3) + 60,
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Stack(
                    children: [
                      Image.asset('assest/images/Celebrate.png'),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Image.asset('assest/images/Correct.png'),
                      )),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text(
                      'Correct !',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
