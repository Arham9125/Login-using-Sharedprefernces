import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mytext extends StatelessWidget {
  String text;
  dynamic colr;
  double Size;
  dynamic weight;

  Mytext(
      {required this.text,
      required this.colr,
      required this.Size,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: colr, fontWeight: weight, fontSize: Size),
    );
  }
}

Box(double height) {
  return SizedBox(
    height: height,
  );
}
