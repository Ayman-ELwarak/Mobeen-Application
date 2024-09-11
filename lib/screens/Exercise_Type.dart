import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/models/video_model.dart';
import '../components/Exercise_Type_Button.dart';
import 'Exercises.dart';

class ExercisesType extends StatelessWidget {
  final List<String> exerciseTitles;
  final List<Video> exerciseVideos;

  const ExercisesType(
      {super.key, required this.exerciseTitles, required this.exerciseVideos});

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    BackButtonContainer().create(context),
                    const Spacer(),
                    const Menu(),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 30.0, right: 30, left: 30, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF5A7493),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: ListView.builder(
                          itemCount: exerciseTitles.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ExercisePage(
                                        exerciseVideos: exerciseVideos,
                                        index: index,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 35.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0A5A5),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      exerciseTitles[index],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
