import "package:flutter/material.dart";
import 'package:navigator/home.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to screen #2",
              style: TextStyle(fontSize: 35),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ));
              },
              icon: Icon(Icons.home),
              label: Text("Go Home"),
            ),
          ],
        ),
      ),
    );
  }
}
