import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';
import 'package:freshproject/common_widget/common_text_field.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_background.dart';
import '../../../common_widget/common_text_widget.dart';
import '../../../view_controller/home/home_controller.dart';

class Send extends StatelessWidget {
  const Send({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeController = Get.put(HomeController());
    return Scaffold(
   
   resizeToAvoidBottomInset: false ,
      body: Stack(
        children: [
          CommonBackground(),
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  // project applogo //  
                  Image.asset(
                    AppImages.applogo,
                  ),
                     SizedBox(height: 20),
                  CustomText(txt: DeshboradString.betterway, alignment: TextAlign.center,fontSize: AppTextSize.extraLargeTextSize,colour: AppColor.buttoncolor,fontWeight: FontWeight.bold),
                  SizedBox(height: 10),
                  CustomText(txt: DeshboradString.tosendmoney, alignment: TextAlign.center,fontSize: AppTextSize.extraLargeTextSize,colour: AppColor.buttoncolor,fontWeight: FontWeight.bold),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 500,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            CommonTextWidget(
                                text: DeshboradString.exchangerate,
                                color: AppColor.buttoncolor,
                                fontWeight: FontWeight.bold),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonTextWidget(
                                    text: DeshboradString.text,
                                    color: AppColor.buttoncolor,
                                    fontWeight: FontWeight.bold),
                                CommonTextWidget(
                                    text: DeshboradString.equal,
                                    color: AppColor.buttoncolor,
                                    fontWeight: FontWeight.bold),
                                CommonTextWidget(
                                    text: DeshboradString.test2,
                                    color: AppColor.buttoncolor,
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //===========you send  ====//
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: CommonTextWidget(
                                      text: DeshboradString.youmoney,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: CustomTextField(
                                          controller: youSendMoneyController,
                                          pLeft: 10.0,
                                          pRight: 10.0,
                                          borderColor: AppColor.lightGreyDark,
                                          keyboardType: TextInputType.text,
                                          hintText: DeshboradString.sendmoney,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 6),
                                          Container(
                                            height: 45,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 2.0,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 2.0,
                                              horizontal: 15.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.white,
                                              border: Border.all(
                                                  color: AppColor.buttoncolor),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(5.0),
                                              ),
                                            ),
                                            child: Obx(
                                              () => DropdownButtonHideUnderline(
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  value: _homeController
                                                      .sendmoneytoCountry.value,
                                                  icon: const Icon(Icons
                                                      .keyboard_arrow_down, color: AppColor.buttoncolor,),
                                                  items: AppStrings
                                                      .moneytranferCountry
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                      value: items,
                                                      child: CommonTextWidget(
                                                        text: items,color: AppColor.buttoncolor,
                                                        fontSize: AppTextSize
                                                            .smallTextSize,
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    _homeController
                                                        .sendmoneytoCountry
                                                        .value = newValue!;
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //===========they get====//
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: CommonTextWidget(
                                      text: DeshboradString.theyget,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: CustomTextField(
                                          controller: yougetMoneyController,
                                          pLeft: 10.0,
                                          pRight: 10.0,
                                          borderColor: AppColor.lightGreyDark,
                                          keyboardType: TextInputType.text,
                                          hintText: DeshboradString.youget,
                                        ),
                                      ),
                                    ),
                                     Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 6),
                                          Container(
                                            height: 45,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 2.0,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 2.0,
                                              horizontal: 15.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.white,
                                              border: Border.all(
                                                  color:  AppColor.buttoncolor),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(5.0),
                                              ),
                                            ),
                                            child: Obx(
                                              () => DropdownButtonHideUnderline(
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  value: _homeController
                                                      .sendmoneytoCountry1.value,
                                                  icon: const Icon(Icons
                                                      .keyboard_arrow_down,color: AppColor.buttoncolor,),
                                                  items: AppStrings
                                                      .moneytranferCountrythey
                                                      .map((String items) {
                                                    return DropdownMenuItem(
                                                      value: items,
                                                      child: CommonTextWidget(
                                                        text: items,
                                                        color: AppColor.buttoncolor,
                                                        fontSize: AppTextSize
                                                            .smallTextSize,
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    _homeController
                                                        .sendmoneytoCountry1
                                                        .value = newValue!;
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //===========reciverd money====//
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: CommonTextWidget(
                                      text: DeshboradString.receviemethod,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 6),
                                    Container(
                                      height: 45,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 2.0,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 2.0,
                                        horizontal: 15.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        border: Border.all(
                                            color: Colors.grey.shade300),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      child: Obx(
                                        () => DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            isExpanded: true,
                                            value: _homeController
                                                .selectBank.value,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items:
                                                AppStrings.TranferbankDropDown
                                                    .map((String items) {
                                              return DropdownMenuItem(
                                                value: items,
                                                child: CommonTextWidget(
                                                  text: items,
                                                  fontSize:
                                                      AppTextSize.smallTextSize,
                                                  textAlign: TextAlign.start,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              _homeController.selectBank.value =
                                                  newValue!;
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //========moeny =//
                                SizedBox(
                                  height: 20,
                                ),
                                 Center(
                                   child: CommonButton(
                                              onTap: () {
                                                _homeController.callexchangerateApi(amount: youSendMoneyController.text.toString().trim(),from:_homeController.sendmoneytoCountry.value ,paymentMethod: _homeController.selectBank.value,to: _homeController.sendmoneytoCountry1.value,type: "0");
                                              },
                                              text: AppStrings.submit),
                                 )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


}
