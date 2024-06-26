import 'package:doc_me_project/landing_page.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildCenter(context),
    );
  }

  Center buildCenter(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "User Name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => landingpage()));
              },
              child: Text("Go In"))
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // leading: GestureDetector(
      //   onTap: () {},
      //   child: Container(
      //     margin: EdgeInsets.all(20.0),
      //     child: Icon(Icons.arrow_back),
      //   ),
      // ),
      title: Text(
        "Doc ME",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Icon(Icons.menu),
          ),
        ),
      ],
    );
  }
}
