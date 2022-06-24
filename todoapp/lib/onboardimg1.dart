import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Img extends StatelessWidget {
  const Img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            alignment: Alignment(0, -0.6),
            child: Text("Hello Peeps !!",
                style: GoogleFonts.staatliches(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 52,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/1.png")),
        ],
      ),
    );
  }
}

//img2

class Img2 extends StatelessWidget {
  const Img2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            alignment: Alignment(0, -0.6),
            child: Text(" LET'S START.. ",
                style: GoogleFonts.staatliches(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 52,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/2.png")),
        ],
      ),
    );
  }
}

//img3
class Img3 extends StatelessWidget {
  const Img3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            alignment: Alignment(0, -0.6),
            child: Text("WELCOME HERE",
                style: GoogleFonts.staatliches(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 52,
                        fontWeight: FontWeight.bold))),
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/3.png")),
        ],
      ),
    );
  }
}
