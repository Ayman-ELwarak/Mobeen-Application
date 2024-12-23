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
import 'package:mobile_app/components/kitchenwareList.dart';
import 'package:mobile_app/models/CardModel.dart';

// ignore: must_be_immutable
class Cardspage extends StatelessWidget {
  List<Cardmodel> items = [
    Cardmodel(
      item_name: 'الأرقام',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Numbers.png',
      items: Numberslist().Numbers,
    ),
    Cardmodel(
      item_name: 'الحروف',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Letters.png',
      items: Letterslist().Letters,
    ),
    Cardmodel(
      item_name: 'الفواكه',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/Fruits.png',
      items: Fruitslist().Fruits,
    ),
    Cardmodel(
      item_name: 'الأشكال',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/Shapes.png',
      items: Shapeslist().Shapes,
    ),
    Cardmodel(
      item_name: 'الألوان',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/Colors.png',
      items: Colorslist().Colors,
    ),
    Cardmodel(
      item_name: 'الطيور',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Birds.png',
      items: Birdslist().Birds,
    ),
    Cardmodel(
      item_name: 'وسائل المواصلات',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Transportation.png',
      items: Transportationlist().Transportation,
    ),
    Cardmodel(
      item_name: 'أدوات المطبخ',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/Kitchenwaer.png',
      items: Kitchenwarelist().Kitchenware,
    ),
    Cardmodel(
      item_name: 'أجهزة منزلية',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/Homeappliances.png',
      items: Homeapplianceslist().HomeAppliances,
    ),
    Cardmodel(
      item_name: 'أجزاء الجسم',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/BodyParts.png',
      items: Bodypartslist().Bodyparts,
    ),
    Cardmodel(
      item_name: 'العائلة',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/family.png',
      items: Familylist().Family,
    ),
    Cardmodel(
      item_name: 'الحشرات',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Insects.png',
      items: Insectslist().insects,
    ),
    Cardmodel(
      item_name: 'حيوانات الغابة',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/JungleAnimals.png',
      items: Jungleanimalslist().Jungleanimals,
    ),
    Cardmodel(
      item_name: 'حيوانات المزرعة',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/FarmAnimals.png',
      items: Farmanimalslist().Farmanimals,
    ),
    Cardmodel(
      item_name: 'الخضروات',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/Vegetables.png',
      items: Vegetableslist().Vegetables,
    ),
    Cardmodel(
      item_name: 'أساس البيت',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Foundation.png',
      items: Foundationlist().Foundation,
    ),
    Cardmodel(
      item_name: 'الملابس',
      color: const Color(0xFFFFE7D5),
      image: 'assest/images/Clothes.png',
      items: Clotheslist().Clothes,
    ),
    Cardmodel(
      item_name: 'المهن',
      color: const Color(0xFFFBE3EC),
      image: 'assest/images/Professions.png',
      items: Professionslist().Professions,
    ),
    Cardmodel(
      item_name: 'المشاعر',
      color: const Color(0xFFD5CCFF),
      image: 'assest/images/Feelings.png',
      items: Feelingslist().Feelings,
    ),
    Cardmodel(
      item_name: 'الأفعال',
      color: const Color(0xFFD3F6F9),
      image: 'assest/images/Verbs.png',
      items: Verbslist().Verbs,
    ),
    Cardmodel(
      item_name: 'الأماكن',
      color: const Color(0xFFFFF7DB),
      image: 'assest/images/Places.png',
      items: Placeslist().Places,
    ),
  ];
  Cardspage({super.key});

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
                      children: getItemscard(context, items, paddingListview),
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
