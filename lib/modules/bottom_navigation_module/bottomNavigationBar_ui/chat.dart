import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_background.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';


// ignore: camel_case_types
class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeController = Get.put(HomeController());
    return Scaffold(
      body: Stack(
        children: [
          CommonBackground()
        ],
      )
    );
  }


}
