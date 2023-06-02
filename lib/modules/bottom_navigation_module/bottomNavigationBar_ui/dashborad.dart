import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_background.dart';

import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_text_widget.dart';
import '../../../utils/app_colors.dart';

class Deshborad extends StatelessWidget {
  Deshborad({Key? key}) : super(key: key);

//[homeList] use a list show items in card //  
  @override
  Widget build(BuildContext context) {
      final _homeController = Get.put(HomeController());
    return Scaffold(
        body: Stack(
      children: [
        //use common background //
        CommonBackground(),
        SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                 
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                    child: CommonTextWidget(
                     text: AppStrings.welcome,
                     fontSize: 24,
                     fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children:  [
                        CommonTextWidget(
                     text:AppStrings.resentTransfer),
                    CommonTextWidget(
                     text:
                          AppStrings.seeAll,
                          color: AppColor.buttoncolor,
                          fontWeight: FontWeight.bold,
                          
                        )
                      ],
                    ),
                  ),
                  // use list view show item in card  for demi use//
                  ListView.builder(
                    itemBuilder: (context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonTextWidget(
                     text:
                                          _homeController.homeList[index].text4,
                                          fontSize: 12,
                                         
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 06),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                                            CommonTextWidget(
                     text:_homeController
                                            .homeList[index].text1),
                                                          CommonTextWidget(
                     text:_homeController
                                            .homeList[index].text2)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 05,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 06),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                                            CommonTextWidget(
                     text:_homeController
                                            .homeList[index].text3)
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 06),
                                    child: Card(
                                      color: AppColor.buttonlebalcolor,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Image.asset(
                                            _homeController
                                                .homeList[index].iconData,
                                            width: 26,
                                            height: 26,
                                            fit: BoxFit.fill,
                                            color: AppColor.buttoncolor,
                                          ),
                                                              CommonTextWidget(
                     text:_homeController
                                              .homeList[index].text5),
                                          Image.asset(
                                            _homeController
                                                .homeList[index].text6,
                                            width: 26,
                                            height: 26,
                                            fit: BoxFit.fill,
                                            color: AppColor.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  )
                                ],
                              ),
                            ),
                          ),
                        
                        ],
                      );
                    },
                
                    itemCount: _homeController.homeList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                    SizedBox(height: 70,),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
