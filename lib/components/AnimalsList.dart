import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/screens/CardTypePage.dart';

// ignore: must_be_immutable
class Animalslist extends StatelessWidget {
  List<Cardstypemodel> Animals = [
    Cardstypemodel(name: 'Rabbit', image: 'assest/images/animals.png',),
  ];
Animalslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Cardtypepage(
      items: Animals,
    );
  }
}