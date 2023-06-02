import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonTextWidget extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  FontStyle fontStyle;
  double fontSize;
  TextAlign textAlign;
  Color color;

  CommonTextWidget(
      {required this.text,
      this.color = Colors.black,
      this.fontWeight = FontWeight.bold,
      this.fontStyle = FontStyle.normal,
      this.fontSize = 16,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          fontSize: fontSize),
    );
  }
}
