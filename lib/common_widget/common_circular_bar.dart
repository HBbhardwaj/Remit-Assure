
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonCircularBar extends StatelessWidget {
  Color color;

  CommonCircularBar({ required this.color});


  @override
  Widget build(BuildContext context){
    return Container(
      width: Get.width,
      height: Get.height,
      color: Colors.black.withOpacity(.20),
      child: Center(
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: 2,
        ),
      ),
    );
  }
}