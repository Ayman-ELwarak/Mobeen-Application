// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/components/GetSpeechDevelopment.dart';
import 'package:mobile_app/components/sort_list.dart';
import 'package:mobile_app/models/SpeechDevelopmentModel.dart';
import 'package:mobile_app/screens/CardsOfSoundLevel.dart';
import 'package:mobile_app/screens/stories.dart';

// ignore: must_be_immutable
class Speechdevelopmentpage extends StatelessWidget {
  List<Speechdevelopmentmodel> items = [
    Speechdevelopmentmodel(
        name: 'ترتيب الاحداث',
        image: 'assest/images/Stories.png',
        color: Color(0xFFA78CB0),
        page: Stories(
            items: sort_lists.image_sort, buttons: sort_lists.stories_images)),
    Speechdevelopmentmodel(
        name: 'تمييز الكلمات',
        image: 'assest/images/SoundLevel.png',
        color: Color(0xFF7A94B2),
        page: Cardsofsoundlevel()),
    // Speechdevelopmentmodel(
    //     name: 'مخارج الحروف',
    //     image: 'assest/images/PronunciationLetters.png',
    //     color: Color(0xFFE0A6A6),
    //     page: Scaffold()),
  ];
  Speechdevelopmentpage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    const double paddingListview = 0;
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
                height: kToolbarHeight / 2,
              ),
              Expanded(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: paddingListview),
                    child: ListView(
                      children:
                          getSpeechDevelopment(context, items, paddingListview),
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
