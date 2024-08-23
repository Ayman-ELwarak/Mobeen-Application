import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';
import 'package:mobile_app/screens/ItemOfCards.dart';

List<GestureDetector> getItemscardtype(
    BuildContext context, List<Cardstypemodel> items, double paddingListview) {
  // calculate the size of screen
  const int numOfItemsPerScreen = 3;
  final double screenheight = MediaQuery.of(context).size.height -
      (MediaQuery.of(context).padding.top + kToolbarHeight + paddingListview);
  const double totalspace = (numOfItemsPerScreen) * 45;
  final double itemheight = (screenheight - totalspace) / numOfItemsPerScreen;
  //
  List<GestureDetector> item = [];
  for (int i = 0; i < items.length; i++) {
    item.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Itemofcards(
                cards: items,
                index: i,
              );
            }),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 32,
          ),
          child: Container(
            height: itemheight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 32, right: 16, bottom: 32.0),
                    child: Image.asset(items[i].image),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Center(
                        child: Text(
                          items[i].name, // text
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
