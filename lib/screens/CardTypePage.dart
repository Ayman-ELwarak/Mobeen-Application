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
    final double screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    const double paddingListview = 16.0;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Container(
          height: screenheight,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/images/CardsTypeBackground.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight / 2,
              ),
              Expanded(
                child: Center(
                  child: ListView(
                    children: getItemscardtype(context, items, paddingListview),
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
