import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/common_widget/common_background.dart';
import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

class CreateNewPassword extends StatelessWidget {
   CreateNewPassword({Key? key}) : super(key: key);
final _homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CommonBackground(),
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                    height: Get.height * 0.05,
                  ),
                    Image.asset(
                      AppImages.applogo,
                    ),
                    CommonTextWidget(
                      text: AppStrings.appName,
                      fontSize: AppTextSize.mediumTextSize,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                    height: Get.height * 0.05,
                  ),
                    CommonTextWidget(
                      text: AppStrings.reset_password,
                      fontSize: AppTextSize.mediumTextSize,
                      fontWeight: FontWeight.bold,
                      color: AppColor.buttoncolor,
                    ),
                   SizedBox(
                    height: Get.height * 0.05,
                  ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Enter you email textFeild //
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: CommonTextWidget(
                                text:  CreateNewPasswordString.enterotp,
                                fontSize: AppTextSize.extraSmallTextSize,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: CustomTextField(
                                controller: resetotpController,
                                pLeft: 10.0,
                                pRight: 10.0,
                                borderColor: Colors.white,
                                keyboardType: TextInputType.emailAddress,
                                hintText: CreateNewPasswordString.enterotppassword,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Enter you email textFeild //
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: CommonTextWidget(
                                text:  CreateNewPasswordString.newpassword,
                                fontSize: AppTextSize.extraSmallTextSize,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: CustomTextField(
                                controller: newPasswordController,
                                pLeft: 10.0,
                                pRight: 10.0,
                                borderColor: Colors.white,
                                keyboardType: TextInputType.emailAddress,
                                hintText: CreateNewPasswordString.enternewpassword,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                         SizedBox(
                    height: Get.height * 0.02,
                  ),
                   Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Enter you email textFeild //
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: CommonTextWidget(
                                text:  CreateNewPasswordString.confrimpass,
                                fontSize: AppTextSize.extraSmallTextSize,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: CustomTextField(
                                controller: confrimpasswordController,
                                pLeft: 10.0,
                                pRight: 10.0,
                                borderColor: Colors.white,
                                keyboardType: TextInputType.emailAddress,
                                hintText: CreateNewPasswordString.enterconfrimpass
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                        const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CommonButton(
                      width: Get.width,
                      text: AppStrings.recentPassword,
                      onTap: () {
                        _homecontroller.callResetPassword(customer_id: StorageHelper.readData(AppStorageKeys.CUSTOMER_ID), password: "${newPasswordController.text.toString().trim()}", reset_password_otp: "${resetotpController.text.toString().trim()}", type: '0');
                        //Get.offAllNamed(Routes.login);
                      },
                    ),
                  ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
