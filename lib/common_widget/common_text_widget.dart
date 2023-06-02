
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CommonTextWidget extends StatelessWidget {

  CommonTextWidget(
      {required this.text,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w300,
      this.fontStyle = FontStyle.normal,
      this.fontSize = 16,
      this.textAlign = TextAlign.left,});
  String text;
  FontWeight fontWeight;
  FontStyle fontStyle;
  double fontSize;
  TextAlign textAlign;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          fontSize: fontSize,),
    );
  }
}
