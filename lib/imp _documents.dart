import 'package:flutter/material.dart';

class impDocuments {
  Container container;
  String name;
  Color boxColor;
  ElevatedButton button;
  bool color;

  impDocuments(
      {required this.container,
        required this.name,
        required this.boxColor,
        required this.button,
        required this.color});

  static List<impDocuments> getDocuments() {
    List<impDocuments> impdocument = [];

    for (int i = 0; i < 10; i++) {
      impdocument.add(impDocuments(
          container: Container(
            height: 20,
            width: 20,
          ),
          name: ('Document $i'),
          boxColor: Colors.blueGrey,
          button: ElevatedButton(onPressed: () {}, child: Icon(Icons.minimize)),
          color: true));
    }
    return impdocument;
  }
}
