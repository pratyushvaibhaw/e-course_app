import 'package:flutter/material.dart';
import 'package:flutter_basics/models/content.dart';
import 'package:flutter_basics/widgets/drawer.dart';

import '../widgets/platform_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 8;
    final str = "Welcome To Flutter Tutor";
    //final dummyList = List.generate(4, (index) => ContentModel.platform[0]);
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
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: ContentModel.platform.length,
        itemBuilder: (BuildContext context, int index) {
          return ContentWidget(
            platform: ContentModel.platform[index],
          );
        },
      ),
    );
  }
}
