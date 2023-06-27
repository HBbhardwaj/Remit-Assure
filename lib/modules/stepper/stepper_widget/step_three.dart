
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_radio_Text_feild.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';


class StepThreeScreen extends StatelessWidget {
  StepThreeScreen({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());
  RxInt selectedValue = 0.obs;
  @override
  Widget build(BuildContext context) {

    return  Card(
     child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              //============text========//
              child: CommonTextWidget(
                text: StepperString.paymentdetails,
                color: AppColor.buttoncolor, 
                
                fontSize: AppTextSize.largeTextSize,
                fontWeight: FontWeight.bold,
              ),
             
             
            ),
              const SizedBox(
              height: 20.0,
            ),
             //========payment type====//
             const SizedBox(height: 6.0,),
           CommonTextWidget(
              text: StepperString.paymenttype,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
              fontWeight: FontWeight.w500,
            ),
             const SizedBox(
              height: 20.0,
            ),
             SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, int index) => InkWell(
                      onTap: (){
                        selectedValue.value = index;
                        DataHelper.logData("value", selectedValue.value);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(
                          2.0,
                        ),
                        child: Obx(
                          ()=>
                          
                          CommonRadioTextFeild(
                            onTab: (value) {
                              log("selectedValue ${selectedValue.value }, ${index}");
                                log("selectedValue ${value}");
                            } ,
                            radiobutton: selectedValue.value == index ?
                                _homeController.paymentdetailtabList[index].text
                                .toString(): "",
                            title: _homeController
                                .paymentdetailtabList[index].text,
                          ),
                        ),
                      ),
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10),
                    itemCount: _homeController.paymentdetailtabList.length,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ),

          ],
        ),
     ),
    );
  }
}