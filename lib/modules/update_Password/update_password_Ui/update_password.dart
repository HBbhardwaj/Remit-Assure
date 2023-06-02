import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/common_widget/common_background.dart';
import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';
import 'package:freshproject/common_widget/common_text_field.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_text_widget.dart';


class UpdatePasswordPage extends StatelessWidget {
   UpdatePasswordPage({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
    CommonBackground(),
    SizedBox(
      height: Get.height,
       width: Get.width,
       child:
       SingleChildScrollView(
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
                      text:  UpdatePassword.updatepassword,
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
                                text:  UpdatePassword.curtetpassword,
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
                                hintText: UpdatePassword.ecurtetpassword,
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
                                text:  UpdatePassword.newpassword,
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
                                hintText:UpdatePassword.enewpassword,
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
                                text:  UpdatePassword.confrim,
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
                                hintText: UpdatePassword.econfrimpassword,
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
                      text:  UpdatePassword.confrim,
                      onTap: () {
                        DataHelper.debugPrintLog("isUpdate", "here");
                     _homeController.callUpdatePassword(old_password: resetotpController.text.toString().trim(), new_password: newPasswordController.text.toString().trim(), type: "0");
                        //Get.offAllNamed(Routes.login);
                      },
                    ),
                  ),
                        SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(txt: UpdatePassword.goback, alignment: TextAlign.center),
                      InkWell(
                        onTap: () {
                          
                          Get.offAllNamed(Routes.home);
                        },
                        child: CustomText(txt: UpdatePassword.homepage, alignment: TextAlign.center,colour: AppColor.buttoncolor,)),
                    ],
                  )
                     
                  ],
                ),
              ),
       )
    

        ],
      ) ,
    );
  }
}