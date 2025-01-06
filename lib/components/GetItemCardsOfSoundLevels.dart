import 'package:flutter/material.dart';
import 'package:mobile_app/components/GetSoundLevels.dart';
import 'package:mobile_app/components/TextaA.dart';
import 'package:mobile_app/models/CardModel.dart';

class getItemCardsOfSoundLevels extends StatefulWidget {
  final List<Cardmodel> items;
  final double paddingListview;

  const getItemCardsOfSoundLevels({
    Key? key,
    required this.items,
    required this.paddingListview,
  }) : super(key: key);

  @override
  _ItemCardsOfSoundLevelsState createState() => _ItemCardsOfSoundLevelsState();
}

class _ItemCardsOfSoundLevelsState extends State<getItemCardsOfSoundLevels> {
  late double screenHeight;
  late double screenWidth;
  late double itemHeight;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Calculate dimensions on dependency changes
    const int numOfItemsPerScreen = 3;
    const double totalSpace = numOfItemsPerScreen * 70;
    screenHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            kToolbarHeight +
            widget.paddingListview);
    screenWidth = MediaQuery.of(context).size.width;
    itemHeight = (screenHeight - totalSpace) / numOfItemsPerScreen;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        final item = widget.items[index];
        final isOdd = index % 2 == 1;

        if (!widget.items[index].flagLevel) {
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.items[index].flagLevel = true;
              });
            },
            child: Container(
              height: itemHeight,
              decoration: BoxDecoration(
                color: item.color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: isOdd ? _buildOddRow(item) : _buildEvenRow(item),
              ),
            ),
          );
        } else {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.items[index].flagLevel = false;
                  });
                },
                child: Container(
                  height: itemHeight,
                  decoration: BoxDecoration(
                    color: item.color,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: isOdd ? _buildOddRow(item) : _buildEvenRow(item),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight / 30,
                ),
                child: Getsoundlevels(
                  cards: widget.items[index].items,
                ),
              ),
            ],
          );
        }
      },
    );
  }

  List<Widget> _buildOddRow(Cardmodel item) {
    return [
      const Spacer(),
      Expanded(
        flex: 4,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth / 30),
            child: Textaa(
              child: Text(
                item.item_name,
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
      Expanded(
        flex: 3,
        child: Image.asset(item.image),
      ),
      const Spacer(),
    ];
  }

  List<Widget> _buildEvenRow(Cardmodel item) {
    return [
      const Spacer(),
      Expanded(
        flex: 3,
        child: Image.asset(item.image),
      ),
      Expanded(
        flex: 4,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth / 30),
            child: Textaa(
              child: Text(
                item.item_name,
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
      const Spacer(),
    ];
  }
}
