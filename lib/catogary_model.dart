import 'package:flutter/material.dart';

class CatogaryModels {
  String name;
  Icon iconPath;
  Color boxColor;

  CatogaryModels({required this.name,required this.iconPath,required this.boxColor});

  static List<CatogaryModels> getCatogaries(){
    List<CatogaryModels> catogaries = [];

    catogaries.add(CatogaryModels(name: 'View', iconPath: Icon(Icons.view_agenda), boxColor: Colors.blueGrey));
    catogaries.add(CatogaryModels(name: 'Important', iconPath: Icon(Icons.star_border), boxColor: Colors.greenAccent));
    catogaries.add(CatogaryModels(name: 'Scan', iconPath: Icon(Icons.document_scanner), boxColor: Colors.blueGrey));
    catogaries.add(CatogaryModels(name: 'Share', iconPath: Icon(Icons.share), boxColor: Colors.greenAccent));
    return catogaries;
  }
}
