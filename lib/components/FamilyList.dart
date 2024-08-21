import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/screens/CardTypePage.dart';

// ignore: must_be_immutable
class Familylist extends StatelessWidget {
  List<Cardstypemodel> Family = [
    Cardstypemodel(name: 'Father', image: 'assest/images/family.png',),
  ];
  Familylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Cardtypepage(
      items: Family,
    );
  }
}