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
            color: Color(0xFF5A7493),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
