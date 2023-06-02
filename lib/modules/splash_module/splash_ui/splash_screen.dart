import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_background_splash.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/modules/home_module/homePage_ui/homePage.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/modules/login_module/login_ui/loginPage.dart';
import 'package:freshproject/utils/app_text_sizes.dart';

import 'package:get/get.dart';
import '../../../common_widget/common_text_widget.dart';
import '../../../helper/storage_helper.dart';
import '../../../utils/app_strings.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // give the duration 3 second splash time //
    // then go to home page //
    super.initState();
    DataHelper.debugPrintLog("token", StorageHelper.readData(AppStorageKeys.ACCESS_TOKEN));
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => StorageHelper.readData(AppStorageKeys.ACCESS_TOKEN) != null ? HomeScreen() :LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // use common background widget//
        // this is app logo use in splash
        
        CommonBackgroundSplashSplash(),

        SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
               Image.asset(AppImages.applogo),
               CommonTextWidget(
                   text:
                    AppStrings.appName,
                    fontSize: AppTextSize.mediumTextSize,
                    fontWeight: FontWeight.w500,
                  
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Image.asset(AppIcons.splashscreenIcon,),
                  ),
            ],
          ),
        )
      
        
        
       // Image.asset(AppIcons.splashscreenIcon),  
      ],
    ));
  }
}
