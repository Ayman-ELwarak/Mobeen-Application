import 'package:flutter/material.dart';
import 'package:mobile_app/components/Backend.dart';
import 'package:mobile_app/components/CorrectBackend.dart';
import 'package:mobile_app/components/GetRequest.dart';
import 'package:mobile_app/components/cheek_list.dart';
import 'package:mobile_app/components/jaw_list.dart';
import 'package:mobile_app/components/lip_list.dart';
import 'package:mobile_app/components/soft_palate_list.dart';
import 'package:mobile_app/components/tongue_list.dart';
import 'package:mobile_app/models/video_model.dart';
import 'package:mobile_app/screens/Exercises.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AllExercises extends StatefulWidget {
  const AllExercises({super.key});

  @override
  State<AllExercises> createState() => _AllExercisesState();
}

class _AllExercisesState extends State<AllExercises> {
  Map<String, bool> isExpanded = {
    'Lip': false,
    'Tongue': false,
    'Jaw': false,
    'Cheek': false,
    'SoftPalate': false,
  };

  void _toggleExpand(String key) {
    setState(() {
      isExpanded.updateAll((k, v) => false);
      isExpanded[key] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double containerHeight = screenHeight / 4;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight / 2,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildExerciseContainer(
                      context,
                      'تمارين الشفاه',
                      'assest/images/Lip_exercises.png',
                      Lip_list.Lip_title,
                      Lip_list.Lip_video,
                      'Lip',
                      containerHeight,
                      Color(0xFFD3F6F9),
                    ),
                    _buildExerciseContainer(
                      context,
                      'تمارين اللسان',
                      'assest/images/Tongue_exercises.png',
                      Tongue_list.Tongue_title,
                      Tongue_list.Tongue_video,
                      'Tongue',
                      containerHeight,
                      Color(0xFFFFE7D5),
                    ),
                    _buildExerciseContainer(
                      context,
                      'تمارين الفك',
                      'assest/images/Jaw_exercises.png',
                      Jaw_list.Jaw_title,
                      Jaw_list.Jaw_video,
                      'Jaw',
                      containerHeight,
                      Color(0xFFFFF7DB),
                    ),
                    _buildExerciseContainer(
                      context,
                      'تمارين الخد',
                      'assest/images/Cheek_exercises.png',
                      Cheek_list.Cheek_title,
                      Cheek_list.Cheek_Video,
                      'Cheek',
                      containerHeight,
                      Color(0xFFFBE3EC),
                    ),
                    _buildExerciseContainer(
                      context,
                      'تمارين البلع',
                      'assest/images/Swallowing_exercises.png',
                      Soft_palate_list.Soft_palate_title,
                      Soft_palate_list.Soft_palate_video,
                      'SoftPalate',
                      containerHeight,
                      Color(0xFFD5CCFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseContainer(
    BuildContext context,
    String title,
    String imagePath,
    List<String> exerciseTitles,
    List<Video> exerciseVideos,
    String key,
    double height,
    Color color,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _toggleExpand(key);
          },
          child: Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    isExpanded[key] ?? false
                        ? Icons.arrow_drop_up
                        : Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isExpanded[key] ?? false)
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              children: exerciseTitles.asMap().entries.map((entry) {
                int index = entry.key;
                String exercise = entry.value;
                return ListTile(
                  title: Text(exercise),
                  onTap: () async {
                    String message =
                        await CorrectBackend('$link/api/v1/users/sections', 2);
                    print(message);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExercisePage(
                          exerciseVideos: exerciseVideos,
                          index: index,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
