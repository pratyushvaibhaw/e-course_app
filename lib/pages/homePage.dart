import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 8;
    final str = "Welcome To Flutter Tutor";
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Text("Courses"),
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text("Flutter Tutor")),
        shadowColor: Color.fromARGB(255, 174, 232, 220),
      ),
      body: Center(
        child: Container(
          child: Text("$str" + "\n Learn Flutter in $days"),
        ),
      ),
    );
  }
}
