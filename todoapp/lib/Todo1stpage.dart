import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sizer/sizer.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:onboarding/onboarding.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/Colors/Colors.dart';
import 'package:todoapp/Todo2ndpage.dart';

import 'package:get/get.dart';
import 'package:todoapp/onboardimg1.dart';

class Todo extends StatefulWidget {
  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  PageController _controller = PageController();
  bool Lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colr,
      body: SafeArea(
        child: Stack(children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                Lastpage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              Img3(),
              Img2(),
              Img(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Start()));
                      });
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20)),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        activeDotColor: Colors.orange.shade400,
                        dotColor: Colors.black),
                  ),
                  Lastpage
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              Get.to(() => Start());
                            });
                          },
                          child: Text(
                            "Start Buddy",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20)),
                          ),
                        )
                      :

                      //done//
                      GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.decelerate);
                          },
                          child: Text(
                            "Next",
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20)),
                          ),
                        ),
                ],
              ))
        ]),
      ),
    );
  }
}
