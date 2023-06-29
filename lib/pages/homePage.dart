import 'package:flutter/material.dart';
import 'package:flutter_basics/models/content.dart';
import 'package:flutter_basics/widgets/drawer.dart';

import '../widgets/platform_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 8;
    final str = "Welcome To Flutter Tutor";
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0.2,
        /*App bar theme can also be set from themeData in main.dart */
        title: Center(
          child: Text(
            "Course Junction",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
                wordSpacing: 5),
          ),
        ),
        shadowColor: Color.fromARGB(255, 221, 10, 10),
        //backgroundColor: Color.fromARGB(255, 226, 192, 79),
      ),
      body: ContentWidget(),
    );
  }
}
