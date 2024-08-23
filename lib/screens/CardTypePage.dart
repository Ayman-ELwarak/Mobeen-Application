import 'package:flutter/material.dart';
import 'package:mobile_app/components/GetItemCardsType.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';

// ignore: must_be_immutable
class Cardtypepage extends StatelessWidget {
  List<Cardstypemodel> items = [];
  Cardtypepage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const double paddingListview = 16.0;
    return Scaffold(
      backgroundColor: const Color(0xFF8CBBB6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8CBBB6),
        leading: BackButtonContainer().create(context),
        actions: [
          Menu(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: paddingListview,
            left: paddingListview,
            right: paddingListview,
          ),
          child: ListView(
            children: getItemscardtype(context, items, paddingListview),
          ),
        ),
      ),
    );
  }
}
