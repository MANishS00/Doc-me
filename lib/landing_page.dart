import 'package:doc_me_project/catogary_model.dart';
import 'package:doc_me_project/document.dart';
import 'package:doc_me_project/imp%20_documents.dart';
import 'package:flutter/material.dart';

class landingpage extends StatefulWidget {
  landingpage({super.key});

  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  List<CatogaryModels> catogaries = [];
  List<Documents> document = [];

  void _getCategories() {
    catogaries = CatogaryModels.getCatogaries();
  }

  void _getDocuments() {
    document = Documents.getDocuments();
  }


  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDocuments();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          buildSearchBox(),
          SizedBox(height: 20.0),
          buildFeatures(),
          SizedBox(height: 20.0),
          buildDocumntsSection(),
          SizedBox(height: 20.0),
          Column(
            children: [
              Text("POPULARs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)

            ],

          )
        ],
      ),
    );
  }

  Column buildDocumntsSection() {
    return Column(
      children: [
        Text(
          "DOCUMENTs",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 10),
        Container(
          height: 250,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: document[index].boxColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Icon(Icons.edit_document),
                      height: 130,
                      width: 140,
                    ),
                    Text(document[index].name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                              color: document[index].color
                                  ? Colors.white
                                  : Color(0xffC58BF2),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            document[index].color
                                ? Color(0xff9DCEFF)
                                : Colors.transparent,
                            document[index].color
                                ? Color(0xff92A3FD)
                                : Colors.transparent,
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: document.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }

  Column buildFeatures() {
    return Column(
      children: [
        Text(
          "FEATUREs",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 15),
        Container(
          height: 120.0,
          child: ListView.separated(
              itemCount: catogaries.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
              separatorBuilder: ((context, index) => SizedBox(width: 25.0)),
              itemBuilder: (context, index) {
                return Container(
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: catogaries[index].boxColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: catogaries[index].iconPath,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Text(
                        catogaries[index].name,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, height: 3),
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  Container buildSearchBox() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 50,
            spreadRadius: 10.0),
      ]),
      child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search Here",
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.filter_alt),
                    ),
                  ],
                ),
              ),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none))),
    );
  }
}
