import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      print("App Under Building Phase");
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            /* ScrollView prevents from bottom overflow error*/
            child: Form(
          key: _formKey,
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
                "$name",
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 142, 167),
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null) if (value.isEmpty)
                          return "Username Can't be Empty";
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "UserName",
                      ),
                      onChanged: (value) {
                        name = "Hi   " + value;
                        setState(() {
                          /* setState changes the state by re-calling the build method*/
                        });
                      },
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value != null) {
                          if (value.isEmpty)
                            return "Password can't be Empty";
                          else if (value.length < 6)
                            return "Password length must be 6";
                        }
                        return null;
                      },
                      obscureText: true,
                      obscuringCharacter: "_",
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        hoverColor: Color.fromARGB(255, 173, 227, 241),
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    /* there are two alternatives inkwell and gesture detectors(it doesn't provide more styling effects)*/
/* from ln 76 to 98 we have desingned a button manually*/
                    Material(
                      child: InkWell(
                        //splashColor: Colors.white,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            color: changeButton
                                ? Colors.white
                                : Color.fromARGB(255, 169, 148, 59),
                            borderRadius:
                                BorderRadius.circular(changeButton ? 60 : 9),
                          ),
                          width: changeButton ? 60 : 175,
                          height: changeButton ? 60 : 40,
                          alignment: Alignment.center,
                          duration: Duration(seconds: 1),
                          child: Center(
                              child: changeButton
                                  ? (Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.black,
                                      weight: 10,
                                    ))
                                  : Text(
                                      "Get In",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(
                    //       minimumSize: Size(175, 38),
                    //     ),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //       print("App Under Building Phase");
                    //     },
                    //     child: Text("Get In")),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
