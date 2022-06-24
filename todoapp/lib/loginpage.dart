import 'dart:async';

import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todoapp/Colors/Colors.dart';
import 'package:todoapp/Homepage.dart';
import 'package:todoapp/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String value;

  void initState() {
    getemail();
    sharedget();

    super.initState();
  }

  TextEditingController email = TextEditingController();

  final password = TextEditingController();

  getemail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getString("Email");
    bothget();
  }

  setemail() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("Email", email.text);
  }

  //for password//
  Sharedset() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("Password", password.text);
  }

  sharedget() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getString("Password");
    bothget();
  }

  bothget() {
    if (email.text == "arham9125" && password.text == "123") {
      Get.to(() => Homepage());
    } else {
      final snack = SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "Wrong details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ));
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colr,
      body: Padding(
        padding: const EdgeInsets.only(top: 1, bottom: 160),
        child: Expanded(
          child: SafeArea(
            child: Container(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.signing,
                    size: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Mytext(
                          text: "Welcome !",
                          colr: Colors.white,
                          Size: 55,
                          weight: FontWeight.bold),
                    ),
                  ),
                  Mytext(
                      text: "Sign in To Continue !",
                      colr: Colors.grey,
                      Size: 15,
                      weight: FontWeight.bold),
                  Box(20),
                  //email//
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: email,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "Enter your email",
                          suffixIcon: Icon(Icons.email)),
                    ),
                  ),
                  //password//
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: password,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "Enter your password",
                          suffixIcon: Icon(FontAwesomeIcons.lock)),
                    ),
                  ),
                  Box(20),
                  GestureDetector(
                    onTap: () {
                      getemail();
                      sharedget();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.purple.shade400,
                      ),
                      height: 60,
                      width: 300,
                      alignment: Alignment(0, 0.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
