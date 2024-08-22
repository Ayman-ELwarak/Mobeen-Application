// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/components/AnimalsList.dart';
import 'package:mobile_app/components/FamilyList.dart';
import 'package:mobile_app/components/FoodList.dart';
import 'package:mobile_app/components/GetItemsCard.dart';
import 'package:mobile_app/components/JobsList.dart';
import 'package:mobile_app/models/CardModel.dart';

// ignore: must_be_immutable
class Cardspage extends StatelessWidget {
  List<Cardmodel> items = [
    Cardmodel(
      item_name: 'Food',
      color: const Color(0xFF8CBBB6),
      image: 'assest/images/food.png',
      items: Foodlist().Food,
    ),
    Cardmodel(
      item_name: 'Animals',
      color: const Color(0xFFFFD18B),
      image: 'assest/images/animals.png',
      items: Animalslist().Animals,
    ),
    Cardmodel(
      item_name: 'Jobs',
      color: const Color(0xFF618184),
      image: 'assest/images/jobs.png',
      items: Jobslist().Jobs,
    ),
    Cardmodel(
      item_name: 'Family',
      color: const Color(0xFFA077AE),
      image: 'assest/images/family.png',
      items: Familylist().Family,
    ),
  ];
  Cardspage({super.key});

  @override
  Widget build(BuildContext context) {
    const double paddingListview = 20;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: paddingListview),
          child: ListView(
            children: getItemscard(context, items, paddingListview),
          ),
        ),
      ),
    );
  }
}
