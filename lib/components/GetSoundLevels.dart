import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/models/soundLevelModel.dart';
import 'package:mobile_app/screens/LevelFivePage.dart';
import 'package:mobile_app/screens/LevelFourPage.dart';
import 'package:mobile_app/screens/LevelOnePage.dart';
import 'package:mobile_app/screens/LevelThreePage.dart';
import 'package:mobile_app/screens/LevelTwoPage.dart';

List<GestureDetector> getSoundLevels(
    BuildContext context,
    List<Soundlevelmodel> items,
    List<Cardstypemodel> Cards,
    double paddingListview,
    Color color) {
  List<Widget> Go = [
    Levelonepage(
      cards: Cards,
      index: 0,
      color: color,
    ),
    Leveltwopage(
      cards: Cards,
      index: 0,
      color: color,
    ),
    Levelthreepage(
      cards: Cards,
      index: 0,
      color: color,
    ),
    Levelfourpage(
      cards: Cards,
      index: 0,
      color: color,
    ),
    Levelfivepage(
      cards: Cards,
      index: 0,
      color: color,
    ),
  ];
  // calculate the size of screen
  const int numOfItemsPerScreen = 4;
  final double screenheight = MediaQuery.of(context).size.height -
      (MediaQuery.of(context).padding.top + kToolbarHeight + paddingListview);
  const double totalspace = (numOfItemsPerScreen) * 70;
  final double itemheight = (screenheight - totalspace) / numOfItemsPerScreen;
  //
  List<GestureDetector> item = [];
  for (int i = 0; i < items.length; i++) {
    item.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Go[i];
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 55, left: 20, right: 20),
          child: Container(
            height: itemheight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 32, right: 16, bottom: 32.0),
                      child: Center(
                        child: Text(
                          items[i].item_name, // text
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 16, bottom: 16),
                    child: Image.asset(items[i].image),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  return item;
}
