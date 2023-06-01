import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/homePage.dart';
import 'package:flutter_basics/pages/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// if function has no specified return value , then it's default is null.
bringVegetable() {
  return 89;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      //initialRoute: "/home",
      /*initial route will always HomePage*/
      routes: {
        "/home": (context) => HomePage(),
        "/": (context) => LoginPage(), /* "/" marks the first route*/
      },
    );
  }
}
