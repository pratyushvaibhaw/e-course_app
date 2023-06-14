import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shadowColor: Colors.black,
        /*We are using listview as they drawer provides very less options. */
        child: Container(
          //color: Color.fromARGB(255, 255, 254, 237),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  //margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 182, 23)),
                      currentAccountPicture: CircleAvatar(
                        // backgroundColor: Color.fromARGB(255, 230, 182, 23),
                        backgroundImage:
                            AssetImage("assets/images/account.jpg"),
                        radius: 8,

                        // child: Text("Profile"),
                      ),

                      //currentAccountPictureSize: Size(150, 100),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                      accountName: Text(
                        "Kalki",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      accountEmail: Text("you@gmail.com"))),
              ListTile(
                enabled: true,
                /*makes the list tile interactive */

                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/programming.png"),
                  radius: 20,
                ),
                title: Text("Learn Programming Languages"),
                subtitle: Text("Java , C++ , Dart ..."),
                trailing: Icon(Icons.navigate_next_rounded),
                tileColor: Color.fromARGB(255, 255, 252, 195),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onTap: () {
                  print("More Features to be added soon");
                },
                hoverColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(5, 2, 1, 10),
              ),
              ListTile(
                enabled: true,
                /*makes the list tile interactive */
                minVerticalPadding: 10,
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/dsa.png"),
                  radius: 20,
                ),
                title: Text("Learn Data Structures & Algorithms"),
                subtitle: Text("Stack , Queue , Linked List.."),
                trailing: Icon(Icons.navigate_next_rounded),
                tileColor: Color.fromARGB(255, 255, 252, 195),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onTap: () {
                  print("More Features to be added soon");
                },
                hoverColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(5, 10, 1, 10),
              ),
              ListTile(
                enabled: true,
                /*makes the list tile interactive */
                minVerticalPadding: 10,
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/aim.jpg"),
                  radius: 20,
                ),
                title: Text("Learn Skills"),
                subtitle:
                    Text("Web Development , Machine-Learning , Android App..."),
                trailing: Icon(Icons.navigate_next_rounded),
                tileColor: Color.fromARGB(255, 255, 252, 195),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onTap: () {
                  print("More Features to be added soon");
                },
                hoverColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(5, 10, 1, 10),
              ),
              ListTile(
                enabled: true,
                /*makes the list tile interactive */
                minVerticalPadding: 10,
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/practice.jpg"),
                  radius: 20,
                ),
                title: Text("Practice"),
                subtitle: Text(" Solve Interview Questions "),
                trailing: Icon(Icons.navigate_next_rounded),
                tileColor: Color.fromARGB(255, 255, 252, 195),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onTap: () {
                  print("More Features to be added soon");
                },
                hoverColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(5, 10, 1, 10),
              )
            ],
          ),
        ));
  }
}
