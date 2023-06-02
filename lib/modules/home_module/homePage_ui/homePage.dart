import 'package:flutter/material.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';

import 'package:freshproject/view_controller/home/home_controller.dart';

import 'package:get/get.dart';


import '../../bottom_navigation_module/bottom_widget.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
 final _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // create a list for nav bar //
  

    return Scaffold(
     resizeToAvoidBottomInset: false ,
      //use obx to chnage the screen tab on navbar button//
      body: Obx(() => _homeController. screenList.elementAt(_homeController.currentTab.value)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.buttoncolor,
        onPressed: () {
          _homeController.currentTab.value = 2;
        },
        child:  Image.asset(
          AppIcons.addOnIcon,
          width: 25,
          height: 25,
          fit: BoxFit.fill,
          color: AppColor.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(

  //      padding: EdgeInsets.zero,
        elevation: 4,
        notchMargin: 6,
   //     surfaceTintColor: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(80.0),
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
          height: 60,
          width: Get.width,
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //=========tab home====//
                    const SizedBox(
                      width: 5.0,
                    ),
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        _homeController.onTab(0);
                      },
                      child: BottomWidget(
                        icon: AppIcons.home,
                        title: DeshBoardText.home,
                        color: _homeController.currentTab.value == 0
                             ? AppColor.buttoncolor
                            : AppColor.black.withOpacity(.80),
                        isSelect: _homeController.currentTab.value == 0
                            ? true
                            : false,
                      ),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    //=========tab chat===//
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        _homeController.onTab(1);
                      },
                      child: BottomWidget(
                        icon: AppIcons.chatIcon,
                        title: DeshBoardText.chat,
                        color: _homeController.currentTab.value == 1
                             ? AppColor.buttoncolor
                            : AppColor.black.withOpacity(.80),
                        isSelect: _homeController.currentTab.value == 1
                            ? true
                            : false,
                      ),
                    ),
                    //==========tab orders=======>
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        _homeController.onTab(3);
                      },
                      child: BottomWidget(
                        icon: AppIcons.checkoutIcon,
                        title: DeshBoardText.orders,
                        color: _homeController.currentTab.value == 3
                             ? AppColor.buttoncolor
                            : AppColor.black.withOpacity(.80),
                        isSelect: _homeController.currentTab.value == 3
                            ? true
                            : false,
                      ),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        _homeController.onTab(4);
                      },
                      child: BottomWidget(
                        icon: AppIcons.userIcon,
                        title: DeshBoardText.profile,
                        color: _homeController.currentTab.value == 4
                            ? AppColor.buttoncolor
                            : AppColor.black.withOpacity(.80),
                        isSelect: _homeController.currentTab.value == 4
                            ? true
                            : false,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
