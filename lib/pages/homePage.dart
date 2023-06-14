import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/routes.dart';
import 'package:flutter_basics/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 8;
    final str = "Welcome To Flutter Tutor";
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 30, 0),
          child: Text(
            "Course Mart",
            style: TextStyle(
                fontWeight: FontWeight.w900, letterSpacing: 1, wordSpacing: 5),
          ),
        ),
        shadowColor: Color.fromARGB(255, 110, 110, 110),
        backgroundColor: Color.fromARGB(255, 226, 192, 79),
      ),
      body: Center(
        child: Container(
          child: Text("$str" + "\n Learn Flutter in $days" + "days"),
        ),
      ),
    );
  }
}
