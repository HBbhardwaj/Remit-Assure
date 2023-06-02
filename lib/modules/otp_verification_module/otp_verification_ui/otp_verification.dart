import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_background.dart';

import 'package:freshproject/common_widget/common_button.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/modules/otp_verification_module/otp_text_feild.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';


import '../../../common_widget/common_circular_bar.dart';
import '../../../common_widget/common_text_widget.dart';
import '../../../helper/data_helper.dart';

class OtpVerficationScreen  extends StatelessWidget {
  OtpVerficationScreen ({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    clearOtpController();

    return Scaffold(
        resizeToAvoidBottomInset: false, 
      body: Stack(
        children: [
          CommonBackground(),
          SingleChildScrollView(
            child: SizedBox(
       height: Get.height,
       width:  Get.width,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
           Image.asset(
                    AppImages.applogo,
                  ),
                 
                    // App name //
                  CommonTextWidget(
                     text:
                    AppStrings.appName,
                    fontSize: AppTextSize.mediumTextSize,
                    
                  ),
                       SizedBox(height: 30,),
                 CommonTextWidget(
                     text: AppStrings.enterverificationcode),   
                SizedBox(height: 10,),    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(fieldOne, true,),
              OtpInput(fieldTwo, false),
              OtpInput(fieldThree, false),
              OtpInput(fieldFour, false),
              OtpInput(fieldfive, false),
              OtpInput(fieldsix, false),

            ],
          ),
          SizedBox(height: 60,),
         Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CommonButton(
                      width: Get.width,
                      text: AppStrings.submit,
                      onTap: () {
                        // use for the go 
                     //    FocusScope.of(context).previousFocus();
                        // click here to go home page//
                        _homeController.callEmailVerification(otp: "${fieldOne.text.toString().trim()}${fieldTwo.text.toString().trim()}"
                            "${fieldThree.text.toString().trim()}${fieldFour.text.toString().trim()}${fieldfive.text.toString().trim()}${fieldsix.text.toString().trim()}", 
                            email:StorageHelper.readData(AppStorageKeys.USER_EMAIL));
                      },
                    ),
                  ),
                   Spacer(),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonTextWidget(
                     text:AppStrings.notreceivercode),
                      InkWell(
                        onTap: (){
                       _homeController.callRegisterApi(email: emailController.text.toString().trim(),
                            password: passwordController.text.toString().trim(),
                            promo_marketing : _homeController.isCheck.value ? "1":"0".toString().trim(),
                            location: _homeController.selectedCountry.value,
                            mobile: phonenumberController.text.toString().trim(),
                            referralCode: referalcodeController.text.toString().trim(),);
                        },
                        child:  CommonTextWidget(
                     text:AppStrings.resendnewcode,
                     color: AppColor.buttoncolor,
                   ))
                    ],
                   ),
                   SizedBox(height: 10,)
         ] )
      ),
          ),
          Obx(() => Visibility(
            visible: DataHelper.isLoading.value,
            child: CommonCircularBar(color: AppColor.headTextColor),),),
        ],
      )
    );
  }
}