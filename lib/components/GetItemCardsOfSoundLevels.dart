import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardModel.dart';
import 'package:mobile_app/screens/SoundLevels.dart';

List<GestureDetector> getItemCardsOfSoundLevels(
    BuildContext context, List<Cardmodel> items, double paddingListview) {
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
                return Soundlevels(item: items[i].items, color: items[i].color);
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 55, left: 20, right: 20),
          child: Container(
            height: itemheight,
            decoration: BoxDecoration(
              color: items[i].color,
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
                            color: Colors.white,
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
                    padding: const EdgeInsets.only(right: 20),
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
