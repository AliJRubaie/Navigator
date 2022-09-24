import "package:flutter/material.dart";

import '../home.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({Key? key}) : super(key: key);
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

String myGroupValue = "gender";

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Select your gender",
            style: TextStyle(fontSize: 35),
          ),
          RadioListTile(
            title: Text("Male", style: TextStyle(fontSize: 20)),
            subtitle: Text("Man"),
            secondary: Icon(Icons.man),
            value: "male",
            groupValue: myGroupValue,
            onChanged: (val) {
              setState(() {
                myGroupValue = val!;
              });
            },
          ),
          RadioListTile(
            title: Text("Female", style: TextStyle(fontSize: 25)),
            subtitle: Text("Lady"),
            secondary: Icon(Icons.woman),
            value: "female",
            groupValue: myGroupValue,
            onChanged: (val) {
              setState(() {
                myGroupValue = val!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ));
            },
            child: Text(
              "Go Home",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
