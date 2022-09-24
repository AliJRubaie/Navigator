import "package:flutter/material.dart";

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Welcome to screen #2",
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
