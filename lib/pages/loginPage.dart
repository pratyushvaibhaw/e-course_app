import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          /* ScrollView prevents from bottom overflow error*/
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/mobile.png",
                fit: BoxFit.contain,
                height: 350,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Welcome! Back!!",
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 142, 167),
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Image.asset(
              //   "assets/images/user.png",
              //   cacheHeight: 30,
              //   cacheWidth: 39,
              // )
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hoverColor: Color.fromARGB(255, 173, 227, 241),
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size(175, 38),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                          print("App Under Building Phase");
                        },
                        child: Text("Get In")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
