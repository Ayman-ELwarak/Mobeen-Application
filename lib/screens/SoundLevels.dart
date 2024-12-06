// ignore_for_file: file_names
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/GetSoundLevels.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/models/soundLevelModel.dart';

// ignore: must_be_immutable
class Soundlevels extends StatelessWidget {
  List<Soundlevelmodel> items = [
    Soundlevelmodel(
        item_name: 'المستوي الاول',
        image: 'assest/images/1.jpg',
        items: List.empty()),
    Soundlevelmodel(
        item_name: 'المستوي الثاني',
        image: 'assest/images/2.jpg',
        items: List.empty()),
    Soundlevelmodel(
        item_name: 'المستوي الثالث',
        image: 'assest/images/3.jpg',
        items: List.empty()),
    Soundlevelmodel(
        item_name: 'المستوي الرابع',
        image: 'assest/images/4.jpg',
        items: List.empty()),
    Soundlevelmodel(
        item_name: 'المستوي الخامس',
        image: 'assest/images/5.jpg',
        items: List.empty()),
  ];
  List<Cardstypemodel> item = [];
  Color color;
  Soundlevels({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    item.shuffle(Random());
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    const double paddingListview = 0;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                // child: Row(
                //   children: [
                //     BackButtonContainer().create(context),
                //     const Spacer(),
                //     const Menu(),
                //   ],
                // ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: paddingListview),
                    child: ListView(
                      children:
                          getSoundLevels(context, items, item, paddingListview, color),
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
