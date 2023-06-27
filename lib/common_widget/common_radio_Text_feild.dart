
import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CommonRadioTextFeild extends StatelessWidget {
  String? title;
  String? radiobutton;
  void Function(String?)? onTab;

  CommonRadioTextFeild({Key? key, this.radiobutton, this.title, this.onTab,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 50,
      decoration:  BoxDecoration(
        border: Border.all(
          color: AppColor.lightGreyDark
        ),
        
        borderRadius: BorderRadius.all(
          
          Radius.circular(1.0),
          
        ),
        color: AppColor.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Radio(
                  value: radiobutton!,
                  groupValue: radiobutton!,
              
                  activeColor: AppColor.buttoncolor,
                  
                  onChanged:  onTab!),
                  Divider(
                    height: 1,
                    thickness: 1,
                  color: AppColor.black,
                  ),
              VerticalDivider(
                width: 2,
                color: AppColor.black,
                thickness: 2,
              ),
              Expanded(
                child: CommonTextWidget(
                  text: title!,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
