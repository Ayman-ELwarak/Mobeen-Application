// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/components/GetItemsCard.dart';
import 'package:mobile_app/models/CardModel.dart';

// ignore: must_be_immutable
class Cardspage extends StatelessWidget {
  List<Cardmodel> items = [
    Cardmodel(
      item_name: 'Food',
      color: const Color(0xFF8CBBB6),
      image: 'assest/images/food.png',
    ),
    Cardmodel(
      item_name: 'Animals',
      color: const Color(0xFFFFD18B),
      image: 'assest/images/animals.png',
    ),
    Cardmodel(
      item_name: 'Jobs',
      color: const Color(0xFF618184),
      image: 'assest/images/jobs.png',
    ),
    Cardmodel(
      item_name: 'Family',
      color: const Color(0xFFA077AE),
      image: 'assest/images/family.png',
    ),
  ];
  Cardspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Column(
            children: getItemscard(context, items),
          ),
        ),
      ),
    );
  }
}
