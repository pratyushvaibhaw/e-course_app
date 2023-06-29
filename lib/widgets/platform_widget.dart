import 'dart:io';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:flutter_basics/models/content.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});
  //  : assert(platform != null);->commented as platform can't be null

  @override
  Widget build(BuildContext context) {
    _launchURL1() async {
      final Uri url = Uri.parse(
          'https://youtube.com/playlist?list=PLdo5W4Nhv31a8UcMN9-35ghv8qyFWD9_S');
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    _launchURL2() async {
      final Uri url = Uri.parse(
          "https://youtube.com/playlist?list=PLxgZQoSe9cg00xyG5gzb5BMkOClkch7Gr");
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    // https://youtube.com/playlist?list=PLxgZQoSe9cg0df_GxVjz3DD_Gck5tMXAdc
    var _view = ListView();
    return ListView(
        padding: EdgeInsets.fromLTRB(2.5, 15, 2.5, 1),
        scrollDirection: Axis.vertical,
        children: [
          Column(children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: Color.fromARGB(255, 128, 179, 227),
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 4),
                // shape:
                //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                leading: Image.asset(
                  'assets/images/jennyC.jpg',
                ),
                minVerticalPadding: 12,
                title: Text(
                  "Programming in C by Jenny",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.navigate_next_rounded),
                subtitle:
                    Text("Datatypes , Variables , Arrays , Structures ...."),
                enabled: true,
                textColor: Color.fromARGB(255, 82, 62, 160),
                hoverColor: Colors.white,
                // tileColor: Color.fromARGB(255, 128, 179, 227),
                onTap: _launchURL1,
              ),
            ),
            SizedBox(
              height: 2.5,
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black,
              color: Color.fromARGB(255, 227, 211, 92),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 2, 0, 4),
                leading: Image.asset(
                  'assets/images/java_dsa.jpg',
                  height: 90,
                  scale: 3,
                ),
                title: Text(
                  "College Wallah DSA in JAVA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.navigate_next_rounded),
                subtitle: Text(
                    "Java Architecture, Datatypes , Arrays ,Linked List.."),
                enabled: true,
                textColor: Color.fromARGB(255, 239, 73, 73),
                hoverColor: Colors.white,
                onTap: _launchURL2,
              ),
            )
          ]),
        ]);
  }
}
