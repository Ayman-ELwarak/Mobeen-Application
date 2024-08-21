import 'package:flutter/material.dart';
import 'package:mobile_app/components/GetItemCardsType.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';

// ignore: must_be_immutable
class Cardtypepage extends StatelessWidget {
  List<Cardstypemodel> items = [];
  Cardtypepage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8CBBB6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8CBBB6),
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Color(0xFF1E3A3D),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 370,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: ListView(
              children: getItemscardtype(context, items),
            ),
          ),
        ),
      ),
    );
  }
}