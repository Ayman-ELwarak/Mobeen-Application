// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mobile_app/models/CardsTypeModel.dart';

class Cardmodel {
  // ignore: non_constant_identifier_names
  final String item_name;
  final String image;
  final Color color;
  List<Cardstypemodel> items = [];
  Cardmodel(
      // ignore: non_constant_identifier_names
      {
    required this.item_name,
    required this.color,
    required this.image,
    required this.items,
  });
}
