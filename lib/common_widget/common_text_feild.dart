
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_text_sizes.dart';



// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {

  CustomTextField(
      {this.hintText = "",
      required this.controller,
      this.fillColor = Colors.white,
      this.textColor = AppColor.headTextColor,
      this.borderColor = AppColor.lightGreyDark,
      this.pLeft = 0.0,
      this.pRight = 0.0,
      this.pTop = 0.0,
      this.maxLines = 1,
      this.pBottom = 0.0,
      this.isObscure = false,

        this.textFormatter,
      
      this.isEnabled = true,
      this.fontSize = AppTextSize.smallTextSize,
      this.keyboardType = TextInputType.none,});
  ScrollController textFieldScrollController = ScrollController();
  String hintText;
  TextEditingController controller;
  // ignore: avoid_multiple_declarations_per_line
  Color fillColor, textColor, borderColor;
  // ignore: avoid_multiple_declarations_per_line
  double pLeft, pRight, pTop, pBottom, fontSize;
  int maxLines;
  // ignore: avoid_multiple_declarations_per_line
  bool isObscure, isEnabled;
  List<TextInputFormatter>? textFormatter;
  TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Theme(
        data: Theme.of(context).copyWith(splashColor: AppColor.grey),
        child: TextField(
          inputFormatters: textFormatter,
          obscureText: isObscure,
          scrollController: textFieldScrollController,
          controller: controller,
          maxLines: maxLines == 0 ? null : maxLines,
          keyboardType: keyboardType,
          style: TextStyle(fontSize: fontSize, color: textColor),
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: fillColor,
            hintText: hintText,
            enabled: isEnabled,
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
            ),
            contentPadding: EdgeInsets.only(
                left: pLeft, bottom: pBottom, top: pTop, right: pRight,),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
            ),
          ),
        ),
      ),
    );
  }
}
