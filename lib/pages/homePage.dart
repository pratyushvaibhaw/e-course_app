import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/drawer.dart';

import '../widgets/platform_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  void _toggleThemeMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 158, 236, 255),
              elevation: 0.2,
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(450, 0, 0, 0),
                    child: Text(
                      "Course Junction",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: isDarkMode?FontWeight.w900:FontWeight.normal,
                        letterSpacing: 1,
                        wordSpacing: 5,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                
                  
                  
              
                  
                    IconButton(
                     padding: EdgeInsets.all(8),
                     iconSize: 30,
                      color: isDarkMode?Colors.yellow:Colors.blueGrey,
                     icon: Icon(
                       isDarkMode ? Icons.wb_sunny_sharp : Icons.mode_night_sharp,
                      //  color: Colors.black,
                     ),
                     onPressed: () {
                       setState(() {
                         isDarkMode = !isDarkMode;
                       });
                     },
                                      ),
                
              ],
              shadowColor: Color.fromARGB(255, 221, 10, 10),
            ),
            body: ContentWidget(),
            drawer: MyDrawer(),
          ),
        );
      },
    );
  }
}
