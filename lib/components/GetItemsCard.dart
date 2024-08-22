import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardModel.dart';
import 'package:mobile_app/screens/CardTypePage.dart';

List<GestureDetector> getItemscard(
    BuildContext context, List<Cardmodel> items, double paddingListview) {// calculate the size of screen
  const int numOfItemsPerScreen = 4;
  final double screenheight = MediaQuery.of(context).size.height -
      (MediaQuery.of(context).padding.top + kToolbarHeight + paddingListview);
  const double totalspace = (numOfItemsPerScreen) * 64;
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
                return Cardtypepage(items: items[i].items);
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 64, left: 20, right: 20),
          child: Container(
            height: itemheight,
            decoration: BoxDecoration(
              color: items[i].color,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      items[i].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          items[i].item_name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 45,
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
