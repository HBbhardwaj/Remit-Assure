import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_background.dart';


class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
         CommonBackground(),
         SizedBox(
          height: Get.height,
          width: Get.width,
          child: Center(child: Text("Receiver Screen")),
         )
      ],
    ),
    );
  }
}
