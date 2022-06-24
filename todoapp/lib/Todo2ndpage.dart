import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:todoapp/Colors/Colors.dart';
import 'package:todoapp/Homepage.dart';
import 'package:todoapp/loginpage.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colr,
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Container(
                alignment: Alignment(0, -0.9),
                child: Image.asset("assets/images/login back.png")),

            //buttons//
            //Login button//
            GestureDetector(
              onTap: () {
                Get.to(() => LoginPage());
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
                  "LOGIN",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //signup button//
            GestureDetector(
              onTap: () {},
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
                  "SIGN-UP",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //Login without signup?//
            GestureDetector(
              onTap: () {
                Get.to(() => Homepage());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.purple.shade400,
                ),
                height: 60,
                width: 300,
                alignment: Alignment(0, 0.0),
                child: Text(
                  "Login without signup?",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SpinKitThreeBounce(
              color: Colors.black,
            )
          ],
        )),
      ),
    );
  }
}
