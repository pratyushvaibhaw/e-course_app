import 'package:flutter/material.dart';
import 'package:flutter_basics/models/content.dart';

class ContentWidget extends StatelessWidget {
  final Content platform;

  const ContentWidget({super.key, required this.platform});
  //  : assert(platform != null);->commented as platform can't be null

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: ListTile(
        leading: Image.asset(platform.image),
        title: Text(
          "Programming in C by Jenny",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.navigate_next_rounded),
        subtitle: Text("Datatype , Variables , Arrays , Structures ...."),
        enabled: true,
        textColor: Color.fromARGB(255, 82, 62, 160),
        hoverColor: Colors.white,
        tileColor: Color.fromARGB(255, 182, 253, 255),
        onTap: () {
          print("To be linked soon");
        },
      ),
    );
  }
}
