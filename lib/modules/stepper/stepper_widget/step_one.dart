import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_dropdown.dart';
import 'package:freshproject/common_widget/common_radio_Text_feild.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';

import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';

import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StepOneScreen extends StatelessWidget {
  StepOneScreen({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());
  RxInt selectedValue = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: Get.height,
        // width: Get.width,

        //============main card start here =///
        child: Card(
          
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              //============text========//
              child: CommonTextWidget(
            text: StepperString.amountanddelivery,
            color: AppColor.buttoncolor,
            fontSize: AppTextSize.largeTextSize,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 20,
          ),
          //=========create a new card for exchange rate ===========//
          SizedBox(
            height: 120,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                color: AppColor.buttoncolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonTextWidget(
                      text: StepperString.exchangerate,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CommonTextWidget(
                      text: StepperString.oneUSD,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //===========textFeilds===========//
          Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //========From Textdropdown===========//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonTextWidget(text: StepperString.from),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonDropDownBox(),
                ),
                SizedBox(
                  height: 14,
                ),
                //====to dropDown===========//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonTextWidget(text: StepperString.to),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonDropDownBox(),
                ),
                SizedBox(
                  height: 14,
                ),
                //==========amount send =========//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonTextWidget(text: StepperString.amountsend),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CustomTextField(
                    controller: amountSendController,
                    pLeft: 10.0,
                    pRight: 10.0,
                    borderColor: AppColor.lightGreyDark,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: StepperString.enteryourpasscode,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                //=========== exchangeamount ===//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child:
                      CommonTextWidget(text: StepperString.exchangeamount),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CustomTextField(
                    controller: exchnageamountController,
                    pLeft: 10.0,
                    pRight: 10.0,
                    borderColor: AppColor.lightGreyDark,
                    keyboardType: TextInputType.visiblePassword,
                    //isEnabled: false,
      
                    hintText: StepperString.checkexchangeamount,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                //===========reciver method texfeild==//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonTextWidget(
                      text: StepperString.receivemethods,
                      fontWeight: FontWeight.bold),
                ),
                //==============radio Button and values=//
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    itemBuilder: (context, int index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(
                        2.0,
                      ),
                      child: InkWell(
                        onTap: (){
                          selectedValue.value = index;
                          DataHelper.logData("value", selectedValue.value);
                        },
                        child: Obx(
                          ()=> CommonRadioTextFeild(
                            radiobutton: selectedValue.value == index ?
                                _homeController.radioTextFeildModelList[index].text
                                .toString(): "",
                            title: _homeController
                                .radioTextFeildModelList[index].text,
                          ),
                        ),
                      ),
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10),
                    itemCount: _homeController.radioTextFeildModelList.length,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                //===========reciver method texfeild==//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: CommonTextWidget(
                      text: StepperString.paymentpartners,
                      fontWeight: FontWeight.bold),
                ),
                //==========radio buttons =========//
                 SizedBox(
                  height: 120,
                  child: ListView.builder(
                    itemBuilder: (context, int index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(
                        2.0,
                      ),
                      child: InkWell(
                        onTap: (){
                          selectedValue.value = index;
                          DataHelper.logData("value", selectedValue.value);
                        },
                        child: Obx(
                          ()=> CommonRadioTextFeild(
                            radiobutton: selectedValue.value == index ?
                                _homeController.radioTextFeildModelList1[index].text
                                .toString(): "",
                            title: _homeController
                                .radioTextFeildModelList1[index].text,
                          ),
                        ),
                      ),
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10),
                    itemCount: _homeController.radioTextFeildModelList1.length,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
              ])
        ],
      ),
    ));
  }
}
