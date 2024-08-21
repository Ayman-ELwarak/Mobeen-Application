import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/screens/CardTypePage.dart';

// ignore: must_be_immutable
class Foodlist extends StatelessWidget {
  List<Cardstypemodel> Food = [
    Cardstypemodel(
      name: 'Berger',
      image: 'assest/images/food.png',
    ),
    Cardstypemodel(
      name: 'Berger',
      image: 'assest/images/food.png',
    ),
    Cardstypemodel(
      name: 'Berger',
      image: 'assest/images/food.png',
    ),
    Cardstypemodel(
      name: 'Berger',
      image: 'assest/images/food.png',
    ),
    Cardstypemodel(
      name: 'Berger',
      image: 'assest/images/food.png',
    ),
  ];
  Foodlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Cardtypepage(
      items: Food,
    );
  }
}
