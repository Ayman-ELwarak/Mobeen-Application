import 'package:flutter/material.dart';
import 'package:mobile_app/components/TextaA.dart';
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
  final double screenwidth = MediaQuery.of(context).size.width;

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
          padding: EdgeInsets.only(
              bottom: screenheight / 30,
              left: screenwidth / 30,
              right: screenwidth / 30),
          child: Container(
            height: itemheight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                  flex: 3,
                  child: Image.asset(items[i].image),
                ),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: screenwidth / 30),
                      child: Textaa(
                        child: Text(
                          items[i].name, // text
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  return item;
}
