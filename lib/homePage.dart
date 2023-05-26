import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 78;
    final str = "First Flutter App";
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Text("Courses"),
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text("Flutter Tutor")),
        backgroundColor: Colors.yellow,
        shadowColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Text("$str in $days" + "  days"),
        ),
      ),
    );
  }
}
