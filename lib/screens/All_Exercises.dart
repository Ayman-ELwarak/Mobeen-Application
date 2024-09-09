import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/components/cheek_list.dart';
import 'package:mobile_app/components/jaw_list.dart';
import '../components/Exercises_Button.dart';
import '../components/lip_list.dart';
import '../components/soft_palate_list.dart';
import '../components/tongue_list.dart';
import 'Exercise_Type.dart';

class Exercises extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonContainer().create(context),
        actions: const [Menu()],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExercisesType(
                          exerciseTitles: Lip_list.Lip_title,
                        exerciseVideos: Lip_list.Lip_video,
                      );
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CBBB6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Lip exercises',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExercisesType(
                        exerciseTitles: Tongue_list.Tongue_title,
                        exerciseVideos: Tongue_list.Tongue_video,
                      );
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CBBB6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Tongue exercises',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExercisesType(
                        exerciseTitles: Jaw_list.Jaw_title,
                        exerciseVideos: Jaw_list.Jaw_video,
                      );
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CBBB6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Jaw exercises',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExercisesType(
                        exerciseTitles: Cheek_list.Cheek_title,
                        exerciseVideos: Cheek_list.Cheek_Video,
                      );
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CBBB6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Cheek exercises',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExercisesType(
                        exerciseTitles: Soft_palate_list.Soft_palate_title,
                        exerciseVideos: Soft_palate_list.Soft_palate_video,
                      );
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                    color: Color(0xFF8CBBB6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      'Soft palate exercises',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
