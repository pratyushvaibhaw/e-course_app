import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.black,
      /*We are using listview as they drawer provides very less options. */
      child: Container(
        // padding: EdgeInsets.fromLTRB(2, 1, 2, 0),
        //color: Color.fromARGB(255, 255, 254, 237),

        child: ListView(
          children: [
            DrawerHeader(
                //margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 5,
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 182, 23)),
                      currentAccountPicture: Card(
                        margin: EdgeInsets.zero,
                        shadowColor: const Color.fromARGB(255, 255, 255, 255),
                        elevation: 12,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          // backgroundColor: Color.fromARGB(255, 230, 182, 23),
                          backgroundImage:
                              AssetImage("assets/images/account.jpg"),
                          radius: 8,

                          // child: Text("Profile"),
                        ),
                      ),

                      //currentAccountPictureSize: Size(150, 100),
                      margin: EdgeInsets.all(0),
                      accountName: Text(
                        "Kalki",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      accountEmail: Text("you@gmail.com")),
                )),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                enabled: true,
                /*makes the list tile interactive */

                leading: Card(
                  shape: CircleBorder(),
                  margin: EdgeInsets.zero,
                  shadowColor: Color.fromARGB(255, 107, 209, 253),
                  elevation: 12,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/programming.png"),
                    radius: 20,
                  ),
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
            ),
            SizedBox(
              height: 3,
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                enabled: true,
                /*makes the list tile interactive */
                minVerticalPadding: 10,
                leading: Card(
                  shape: CircleBorder(),
                  margin: EdgeInsets.zero,
                  shadowColor: Color.fromARGB(255, 5, 16, 45),
                  elevation: 12,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dsa.png"),
                    radius: 20,
                  ),
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
            ),
            SizedBox(
              height: 3,
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                enabled: true,
                /*makes the list tile interactive */
                minVerticalPadding: 10,
                leading: Card(
                  shape: CircleBorder(),
                  margin: EdgeInsets.zero,
                  shadowColor: Color.fromARGB(255, 114, 195, 246),
                  elevation: 12,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/aim.jpg"),
                    radius: 20,
                  ),
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
            ),
            SizedBox(
              height: 3,
            ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                enabled: true,
                /*makes the list tile interactive */
                minVerticalPadding: 10,
                leading: Card(
                  margin: EdgeInsets.zero,
                  shadowColor: Colors.white,
                  elevation: 12,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/practice.jpg"),
                    radius: 20,
                  ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
