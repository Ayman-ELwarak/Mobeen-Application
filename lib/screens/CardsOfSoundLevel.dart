// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BirdsList.dart';
import 'package:mobile_app/components/BodyPartsList.dart';
import 'package:mobile_app/components/ClothesList.dart';
import 'package:mobile_app/components/ColorsList.dart';
import 'package:mobile_app/components/FamilyList.dart';
import 'package:mobile_app/components/FarmAnimalsList.dart';
import 'package:mobile_app/components/FeelingsList.dart';
import 'package:mobile_app/components/FoundationList.dart';
import 'package:mobile_app/components/FruitsList.dart';
import 'package:mobile_app/components/GetItemCardsOfSoundLevels.dart';
import 'package:mobile_app/components/HomeAppliancesList.dart';
import 'package:mobile_app/components/InsectsList.dart';
import 'package:mobile_app/components/JungleAnimalsList.dart';
import 'package:mobile_app/components/LettersList.dart';
import 'package:mobile_app/components/NumbersList.dart';
import 'package:mobile_app/components/PlacesList.dart';
import 'package:mobile_app/components/ProfessionsList.dart';
import 'package:mobile_app/components/ShapesList.dart';
import 'package:mobile_app/components/TransportationList.dart';
import 'package:mobile_app/components/VegetablesList.dart';
import 'package:mobile_app/components/VerbsList.dart';
import 'package:mobile_app/components/kitchenwareList.dart';
import 'package:mobile_app/models/CardModel.dart';

// ignore: must_be_immutable
class Cardsofsoundlevel extends StatelessWidget {
  Cardsofsoundlevel({super.key});

  List<Cardmodel> items = [
    Cardmodel(
      item_name: 'الأرقام',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Numbers.png',
      items: Numberslist().Numbers,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الحروف',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Letters.png',
      items: Letterslist().Letters,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الفواكه',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/Fruits.png',
      items: Fruitslist().Fruits,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الأشكال',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/Shapes.png',
      items: Shapeslist().Shapes,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الألوان',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/Colors.png',
      items: Colorslist().Colors,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الطيور',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Birds.png',
      items: Birdslist().Birds,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'وسائل المواصلات',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Transportation.png',
      items: Transportationlist().Transportation,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'أدوات المطبخ',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/Kitchenwaer.png',
      items: Kitchenwarelist().Kitchenware,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'أجهزة منزلية',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/Homeappliances.png',
      items: Homeapplianceslist().HomeAppliances,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'أجزاء الجسم',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/BodyParts.png',
      items: Bodypartslist().Bodyparts,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'العائلة',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/family.png',
      items: Familylist().Family,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الحشرات',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Insects.png',
      items: Insectslist().insects,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'حيوانات الغابة',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/JungleAnimals.png',
      items: Jungleanimalslist().Jungleanimals,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'حيوانات المزرعة',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/FarmAnimals.png',
      items: Farmanimalslist().Farmanimals,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الخضروات',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/Vegetables.png',
      items: Vegetableslist().Vegetables,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'أساس البيت',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Foundation.png',
      items: Foundationlist().Foundation,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الملابس',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Clothes.png',
      items: Clotheslist().Clothes,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'المهن',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/Professions.png',
      items: Professionslist().Professions,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'المشاعر',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/Feelings.png',
      items: Feelingslist().Feelings,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الأفعال',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/Verbs.png',
      items: Verbslist().Verbs,
      flagLevel: false,
    ),
    Cardmodel(
      item_name: 'الأماكن',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Places.png',
      items: Placeslist().Places,
      flagLevel: false,
    ),
  ];

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
                    child: getItemCardsOfSoundLevels(
                      items: items,
                      paddingListview: paddingListview,
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
