import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final days = 8;
    final str = "Welcome To Flutter Tutor";
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 30, 100, 5),
              child: ElevatedButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(150, 40),
                    backgroundColor: Color.fromARGB(0, 177, 244, 129),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: Text("Logout")),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 30, 100, 5),
              child: Text(
                "Courses",
                selectionColor: Color.fromARGB(255, 142, 111, 15),
              ),
            ),
          ],
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
