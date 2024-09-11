// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/BirdsList.dart';
import 'package:mobile_app/components/BodyPartsList.dart';
import 'package:mobile_app/components/ClothesList.dart';
import 'package:mobile_app/components/ColorsList.dart';
import 'package:mobile_app/components/FamilyList.dart';
import 'package:mobile_app/components/FarmAnimalsList.dart';
import 'package:mobile_app/components/FeelingsList.dart';
import 'package:mobile_app/components/FoundationList.dart';
import 'package:mobile_app/components/FruitsList.dart';
import 'package:mobile_app/components/GetItemsCard.dart';
import 'package:mobile_app/components/HomeAppliancesList.dart';
import 'package:mobile_app/components/InsectsList.dart';
import 'package:mobile_app/components/JungleAnimalsList.dart';
import 'package:mobile_app/components/LettersList.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/components/NumbersList.dart';
import 'package:mobile_app/components/PlacesList.dart';
import 'package:mobile_app/components/ProfessionsList.dart';
import 'package:mobile_app/components/ShapesList.dart';
import 'package:mobile_app/components/TransportationList.dart';
import 'package:mobile_app/components/VegetablesList.dart';
import 'package:mobile_app/components/VerbsList.dart';
import 'package:mobile_app/components/cheek_list.dart';
import 'package:mobile_app/components/jaw_list.dart';
import 'package:mobile_app/components/kitchenwareList.dart';
import 'package:mobile_app/components/lip_list.dart';
import 'package:mobile_app/components/soft_palate_list.dart';
import 'package:mobile_app/components/tongue_list.dart';
import 'package:mobile_app/models/CardModel.dart';
import 'package:mobile_app/models/ExerciesModel.dart';
import 'package:mobile_app/screens/Exercise_Type.dart';

// ignore: must_be_immutable
class AllExercises extends StatelessWidget {
  const AllExercises({super.key});

  @override
  Widget build(BuildContext context) {
    const int numOfItemsPerScreen = 4;
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    const double totalspace = (numOfItemsPerScreen) * 80;
    final double itemheight = (screenheight - totalspace) / numOfItemsPerScreen;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFF5A7493),
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
                  child: Container(
                    child: ListView(
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
                            padding: const EdgeInsets.only(
                                bottom: 55, left: 20, right: 20),
                            child: Container(
                              height: itemheight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0,
                                            top: 32,
                                            right: 16,
                                            bottom: 32.0),
                                        child: Center(
                                          child: Text(
                                            'تمارين الشفاه', // text
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assest/images/Lip_exercises.png',
                                      ),
                                    ),
                                  ),
                                ],
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
                            padding: const EdgeInsets.only(
                                bottom: 55, left: 20, right: 20),
                            child: Container(
                              height: itemheight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0,
                                            top: 32,
                                            right: 16,
                                            bottom: 32.0),
                                        child: Center(
                                          child: Text(
                                            'تمارين اللسان', // text
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assest/images/Tongue_exercises.png',
                                      ),
                                    ),
                                  ),
                                ],
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
                            padding: const EdgeInsets.only(
                                bottom: 55, left: 20, right: 20),
                            child: Container(
                              height: itemheight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0,
                                            top: 32,
                                            right: 16,
                                            bottom: 32.0),
                                        child: Center(
                                          child: Text(
                                            'تمارين الفك', // text
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assest/images/Jaw_exercises.png',
                                      ),
                                    ),
                                  ),
                                ],
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
                            padding: const EdgeInsets.only(
                                bottom: 55, left: 20, right: 20),
                            child: Container(
                              height: itemheight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0,
                                            top: 32,
                                            right: 16,
                                            bottom: 32.0),
                                        child: Center(
                                          child: Text(
                                            'تمارين الخد', // text
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assest/images/Cheek_exercises.png',
                                      ),
                                    ),
                                  ),
                                ],
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
                                    exerciseTitles:
                                        Soft_palate_list.Soft_palate_title,
                                    exerciseVideos:
                                        Soft_palate_list.Soft_palate_video,
                                  );
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 55, left: 20, right: 20),
                            child: Container(
                              height: itemheight,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0,
                                            top: 32,
                                            right: 16,
                                            bottom: 32.0),
                                        child: Center(
                                          child: Text(
                                            'تمارين البلع', // text
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assest/images/Swallowing_exercises.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
