import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/screens/CardTypePage.dart';

// ignore: must_be_immutable
class Jobslist extends StatelessWidget {
  List<Cardstypemodel> Jobs = [
    Cardstypemodel(name: 'Astronaut', image: 'assest/images/jobs.png',),
    Cardstypemodel(name: 'Astronaut', image: 'assest/images/jobs.png',),
    Cardstypemodel(name: 'Astronaut', image: 'assest/images/jobs.png',),
    Cardstypemodel(name: 'Astronaut', image: 'assest/images/jobs.png',),
    Cardstypemodel(name: 'Astronaut', image: 'assest/images/jobs.png',),
  ];
  Jobslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Cardtypepage(
      items: Jobs,
    );
  }
}