import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.contain,
            height: null,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Welcome! Back!!",
            style: TextStyle(
              color: Color.fromARGB(255, 95, 97, 214),
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Image.asset(
          //   "assets/images/user.png",
          //   cacheHeight: 30,
          //   cacheWidth: 39,
          // )
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40.0),
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
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("App Under Building Phase");
                    },
                    child: Text("Get In")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
