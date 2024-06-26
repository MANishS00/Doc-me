import 'package:flutter/material.dart';

class Documents {
  Container container;
  String name;
  Color boxColor;
  ElevatedButton button;
  bool color;

  Documents(
      {required this.container,
      required this.name,
      required this.boxColor,
      required this.button,
      required this.color});

  static List<Documents> getDocuments() {
    List<Documents> document = [];

    for (int i = 0; i < 10; i++) {
      document.add(Documents(
          container: Container(
            height: 20,
            width: 20,
          ),
          name: ('Document $i'),
          boxColor: Colors.blueGrey,
          button: ElevatedButton(onPressed: () {}, child: Icon(Icons.minimize)),
          color: true));
    }
    return document;
  }
}
