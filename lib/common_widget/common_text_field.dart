import 'package:flutter/material.dart';
import 'package:freshproject/utils/app_font_family.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {

  CustomText(
      {Key? key,
      required this.txt,
      this.colour,
      this.fontSize,
      this.bold,
      required this.alignment,
      this.fontWeight = FontWeight.normal,
      this.fontFamily = proximaNova,
      this.fontStyle = FontStyle.normal,
      this.textDecoration = TextDecoration.none,
      this.textHeight = 1.0,
      this.textOverflow = TextOverflow.visible,})
      : super(key: key);
  String txt;
  Color? colour;
  // ignore: avoid_multiple_declarations_per_line
  double? fontSize, textHeight;
  bool? bold = false;
  FontWeight fontWeight;
  // int? alignment;
  TextAlign alignment;
  TextDecoration textDecoration;
  FontStyle fontStyle;
  String fontFamily;
  TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: alignment,
      overflow: textOverflow,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        color: colour,
        fontWeight: bold == true ? FontWeight.bold : fontWeight,
        fontFamily: bold == true ? sansSerifBldFLF : fontFamily,
        decoration: textDecoration,
        fontStyle: fontStyle,
        height: textHeight,
      ),
    );
  }
}
