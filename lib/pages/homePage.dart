import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 8;
    final str = "Welcome To Flutter Tutor";
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        /*App bar theme can also be set from themeData in main.dart */
        title: Center(
          child: Text(
            "Course Mart",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
                wordSpacing: 5),
          ),
        ),
        //shadowColor: Color.fromARGB(255, 110, 110, 110),
        //backgroundColor: Color.fromARGB(255, 226, 192, 79),
      ),
      body: Center(
        child: Container(
          child: Text("$str" + "\n Learn Flutter in $days" + "days"),
        ),
      ),
    );
  }
}
