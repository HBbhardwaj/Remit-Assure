import 'package:flutter/cupertino.dart';
import 'package:freshproject/utils/app_images.dart';

import 'package:get/get.dart';


class CommonBackgroundSplashSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
     child: Stack(
      children: [

        Image.asset(AppImages.backgroundImage,fit: BoxFit.fill , height: Get.height,
        width: Get.width,),
       
        Image.asset(AppImages.backgtroundIcon),
      ],
     )
    );
  }
}
