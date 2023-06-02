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

class ForgetPassword extends StatelessWidget {
 ForgetPassword({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CommonBackground(),
            SingleChildScrollView(
              child: SizedBox(
                height: Get.height,
                width: Get.width,
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
                      text: AppStrings.forgetPassword,
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
                                text: AppStrings.youremail,
                                fontSize: AppTextSize.extraSmallTextSize,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: CustomTextField(
                                controller: emailcheckController,
                                pLeft: 10.0,
                                pRight: 10.0,
                                borderColor: Colors.white,
                                keyboardType: TextInputType.emailAddress,
                                hintText: AppStrings.email,
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
                      text: AppStrings.forget_Password,
                      onTap: () {
                     _homeController.callResentPasswordEmail(email: "${emailcheckController.text.toString().trim()}" ,type: "0");
                     
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CommonTextWidget(
                                text: AppStrings.goback),
                          ),
                          InkWell(
                            onTap: () {
                              // click here to go sigup  page //
                              Get.offAllNamed(Routes.login);
                            },
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: CommonTextWidget(
                                text: AppStrings.login,
                                color: AppColor.buttoncolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
