
import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';

// ignore: must_be_immutable
class CommonButton extends StatelessWidget {

  CommonButton(
      {required this.text,
      this.width = 150,
      this.height = 50,
      this.color = Colors.white,
      this.fontWeight = FontWeight.bold,
      this.fontStyle = FontStyle.normal,
      this.fontSize = 18,
      this.brTopLeft = 6.0,
      this.brTopRight = 6.0,
      this.brBottomLeft = 6.0,
      this.brBottomRight = 6.0,
      this.onTap,
      this.textAlign = TextAlign.left,
      this.buttonPrimaryColor = Colors.transparent,
      this.buttonOnPrimaryColor = Colors.transparent,

      this.gradient = const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.7, 0.9],
          tileMode: TileMode.repeated,
          colors: [
            Color(0xff5D14DE),
            Color(0xff331799),
           
          ],),});
  String text;
  // ignore: avoid_multiple_declarations_per_line
  double width, height, fontSize,brTopLeft, brTopRight, brBottomLeft, brBottomRight;
  FontWeight fontWeight;
  FontStyle fontStyle;
  TextAlign textAlign;
  Gradient gradient;
  // ignore: avoid_multiple_declarations_per_line
  Color color, buttonPrimaryColor, buttonOnPrimaryColor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(gradient: gradient,
       borderRadius: BorderRadius.only(topLeft: Radius.circular(brTopLeft),
          bottomRight: Radius.circular(brBottomRight),
          bottomLeft: Radius.circular(brBottomLeft),
          topRight: Radius.circular(brTopRight),),
      ),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          
          foregroundColor: buttonOnPrimaryColor, backgroundColor: buttonPrimaryColor,
         // foreground
        ),
        // ignore: unnecessary_null_checks
        onPressed: onTap!,
        child: CommonTextWidget(
          text: text,
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          color: color,
          textAlign: textAlign,
          
        ),
      ),
    );
  }
}
