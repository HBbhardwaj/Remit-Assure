import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_background.dart';

import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/common_widget/common_circular_bar.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/modules/Forget_Password_module/forget_password_ui/forget_passwrod.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

import '../../../../app_routes/routes.dart';
import '../../../../common_widget/common_text_feild.dart';
import '../../../../utils/app_controller.dart';
import '../../../../utils/app_images.dart';
import '../../../common_widget/common_text_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());
  @override
  // UI Part Start//
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  // project applogo //
                  Image.asset(
                    AppImages.applogo,
                  ),
                  // App name //
                  CommonTextWidget(
                    text: AppStrings.appName,
                    fontSize: AppTextSize.mediumTextSize,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  CommonTextWidget(
                    text: AppStrings.welcomeBack,
                    fontSize: AppTextSize.largeSize,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
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
                  // Enter your passcode textFeild //
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                  //Login Button //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: InkWell(
                          onTap: () {
                         Get.toNamed(Routes.frogetpassword);
                          //  _bootmSheet(context);
                          },
                          child: CommonTextWidget(
                            text: AppStrings.forgetPassword,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CommonButton(
                      width: Get.width,
                      text: AppStrings.login,
                      onTap: () {
                        _homeController.callLoginApi(
                          email: emailController.text.toString().trim(),
                          password: passwordController.text.toString().trim(),
                          type: '0',
                        );
                         StorageHelper.writeData(AppStorageKeys.USER_Password,passwordController.text.toString().trim());
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
                                text: AppStrings.doHaveAnAccount),
                          ),
                          InkWell(
                            onTap: () {
                              // click here to go sigup  page //
                              Get.offAllNamed(Routes.sigup);
                            },
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: CommonTextWidget(
                                text: AppStrings.signup,
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
          ),
          Obx(
            () => Visibility(
              visible: DataHelper.isLoading.value,
              child: CommonCircularBar(color: AppColor.headTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
