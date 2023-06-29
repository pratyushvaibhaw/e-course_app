import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme extends StatelessWidget {
  static lightTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
          shadowColor: Color.fromARGB(255, 239, 201, 9),
          iconTheme: IconThemeData(color: Colors.black),
          color: Color.fromARGB(255, 227, 248, 255),
        ),
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      );
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
