import "package:flutter/material.dart";
import 'package:navigator/screens/screen_one.dart';
import 'package:navigator/screens/screen_two.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ScreenOne();
                  },
                ));
              },
              child: Text("Go to screen #1", style: TextStyle(fontSize: 30))),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ScreenTwo();
                  },
                ));
              },
              child: Text("Go to screen #2", style: TextStyle(fontSize: 30))),
        ],
      )),
    );
  }
}
