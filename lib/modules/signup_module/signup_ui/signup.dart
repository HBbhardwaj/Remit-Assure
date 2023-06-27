// ignore_for_file: use_named_constants

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/common_widget/common_background.dart';

import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/common_widget/common_circular_bar.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';

import '../../../common_widget/common_text_widget.dart';
import '../../../helper/data_helper.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // UI part start here //
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // this is  background of the app //
          CommonBackground(),
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  // app logo //
                  Image.asset(
                    AppImages.applogo,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //app name //
                  CommonTextWidget(
                    text: AppStrings.appName,
                    fontSize: AppTextSize.mediumTextSize,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  CommonTextWidget(
                    text: AppStrings.craeteanAccount,
                    fontSize: AppTextSize.extraLargeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  // dropdown box use //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CommonTextWidget(
                          text: AppStrings.sendmoney,
                          fontSize: AppTextSize.idelTextSize,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CommonTextWidget(
                          text: AppStrings.location,
                          fontSize: AppTextSize.extraSmallTextSize,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 45,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 2.0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 15.0,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Obx(
                          () => DropdownButtonHideUnderline(
                            child: DropdownButton(
                              isExpanded: true,
                              value: _homeController.selectedCountry.value,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: AppStrings.countryDropDown
                                  .map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: CommonTextWidget(
                                    text: items,
                                    fontSize: AppTextSize.smallTextSize,
                                    textAlign: TextAlign.start,
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                _homeController.selectedCountry.value =
                                    newValue!;
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CommonTextWidget(
                          text: AppStrings.youremail,
                          fontSize: AppTextSize.extraSmallTextSize,
                        ),
                      ),
                      const SizedBox(height: 6),

                      // Enter your email textField //
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomTextField(
                          controller: emailController,
                          pLeft: 10.0,
                          pRight: 10.0,
                          borderColor: Colors.white,
                          keyboardType: TextInputType.emailAddress,
                          hintText: AppStrings.email,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Enter your number //
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CommonTextWidget(
                          text: AppStrings.yournumber,
                          fontSize: AppTextSize.extraSmallTextSize,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomTextField(
                          controller: phonenumberController,
                          pLeft: 10.0,
                          pRight: 10.0,
                          textFormatter: [
                            FilteringTextInputFormatter.digitsOnly,
                            // Limit the input
                            LengthLimitingTextInputFormatter(12),
                          ],
                          borderColor: Colors.white,
                          keyboardType: TextInputType.number,
                          hintText: AppStrings.number,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // enter your password textField //
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CommonTextWidget(
                          text: AppStrings.yourpassword,
                          fontSize: AppTextSize.extraSmallTextSize,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomTextField(
                          controller: passwordController,
                          pLeft: 10.0,
                          pRight: 10.0,
                          borderColor: Colors.white,
                          keyboardType: TextInputType.visiblePassword,
                          hintText: AppStrings.password,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26, right: 4),
                        child: GFToggle(
                          onChanged: (val) {
                            // tap on toggle button show textField //
                            _homeController.isReferCode.value =
                                !_homeController.isReferCode.value;
                          },
                          value: _homeController.isReferCode.value,
                          enabledThumbColor: Colors.white,
                          enabledTrackColor: Colors.blue,
                          type: GFToggleType.ios,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CommonTextWidget(
                            text: AppStrings.refercaode,
                            fontSize: AppTextSize.extraSmallTextSize,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () =>
                        // isReferCode help to us for hide and show the text Feild //
                        Visibility(
                      visible: _homeController.isReferCode.value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: CommonTextWidget(
                              text: AppStrings.yourreferralcode,
                              fontSize: AppTextSize.extraSmallTextSize,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: CustomTextField(
                              controller: referalcodeController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: Colors.white,
                              keyboardType: TextInputType.emailAddress,
                              hintText: AppStrings.referralcode,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Obx(
                          // is check use for the the click on the check box//
                          () => Checkbox(
                              activeColor: AppColor.checkboxcolor,
                              value: _homeController.isCheck.value,
                              onChanged: (val) {
                                _homeController.isCheck.value =
                                    !_homeController.isCheck.value;
                              }),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: EdgeInsets.only(right: 24),
                        child: CommonTextWidget(
                          text: AppStrings.iagree,
                          fontSize: AppTextSize.extraSmallTextSize,
                          textAlign: TextAlign.justify,
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CommonButton(
                      width: Get.width,
                      text: AppStrings.signup,
                      onTap: () {
                        _homeController.callRegisterApi(
                          email: emailController.text.toString().trim(),
                          password: passwordController.text.toString().trim(),
                          promo_marketing: _homeController.isCheck.value
                              ? "1"
                              : "0".toString().trim(),
                          location: _homeController.selectedCountry.value,
                          mobile: phonenumberController.text.toString().trim(),
                          referralCode:
                              referalcodeController.text.toString().trim(),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CommonTextWidget(
                              text: AppStrings.alreadyhaveanaccount),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(Routes.login);
                            },
                            child: CommonTextWidget(
                              text: AppStrings.login,
                              color: AppColor.buttoncolor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Obx(
            () => Visibility(
              visible: DataHelper.isLoading.value,
              child: CommonCircularBar(
                color: AppColor.headTextColor,
              ),
            ),
          ),
          ////===========checking the code ///
          ///===in my computer working==///
        ],
      ),
    );
  }
}
