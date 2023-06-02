import 'package:flutter/cupertino.dart';
import 'package:freshproject/utils/app_images.dart';

import 'package:get/get.dart';


class CommonBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFFF9F2FD),
              Color(0xFFB5ADFB),
              Color(0xFFFBC2DC),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.02, 0.2, 1.0],
            tileMode: TileMode.repeated,),
      ),
      child: Stack(
        children: [
            Image.asset(AppImages.backgtroundIcon),
        ],
      ),
    );
  }
}