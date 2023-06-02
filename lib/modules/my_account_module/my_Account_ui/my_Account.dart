
import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
//import 'package:local_auth/local_auth.dart';

import '../../../common_widget/common_background.dart';
import '../../../common_widget/common_text_widget.dart';
import '../../../utils/app_strings.dart';

class MYAccountPage extends StatefulWidget {
 MYAccountPage({Key? key}) : super(key: key);

  @override
  State<MYAccountPage> createState() => _MYAccountPageState();
}

class _MYAccountPageState extends State<MYAccountPage> {
  // late final LocalAuthentication auth;
  // bool _supportState =false;
  // @override
  // void initState() {
  //  auth = LocalAuthentication();
  //  auth.isDeviceSupported().then((bool isDeviceSupported)=> setState(() {
  //    _supportState = isDeviceSupported;

  //  },)

  //  );
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final _homeController = Get.put(HomeController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CommonBackground(),
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  
                      SizedBox(
                        width: 25,
                      ),
                      CommonTextWidget(
                        text: AppStrings.myaccount,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: CommonTextWidget(
                      text: AppStrings.general,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // 1st card use in  my accound //
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              _homeController.callUserProfiledata();
                              //Get.toNamed(Routes.myprofiole);
                            },
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.userIcon,
                                height: 30,
                                width: 30,
                                color: AppColor.buttoncolor,
                              ),
                              title:
                                  CommonTextWidget(text: AppStrings.mydetails),
                            ),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                          InkWell(
                            onTap: (){
                              Get.toNamed(Routes.updatePassword);
                            },
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.lockIcon,
                                width: 30,
                                height: 30,
                                fit: BoxFit.fill,
                                color: AppColor.buttoncolor,
                              ),
                              title: CommonTextWidget(
                                  text: AppStrings.updatepassword),
                            ),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppIcons.qustionIcon,
                              width: 30,
                              height: 30,
                              fit: BoxFit.fill,
                              color: AppColor.buttoncolor,
                            ),
                            title: CommonTextWidget(text: AppStrings.help),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///============================2nd==================//
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: CommonTextWidget(
                      text: AppStrings.securitySetting,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                          
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.pinIcon,
                                width: 26,
                                height: 26,
                                fit: BoxFit.fill,
                                color: AppColor.buttoncolor,
                              ),
                              title: CommonTextWidget(text: AppStrings.updatepin),
                            ),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                       
                          InkWell(
                        //    onTap: _authenticate,
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.biometricsIcon,
                                width: 26,
                                height: 26,
                                fit: BoxFit.fill,
                                color: AppColor.buttoncolor,
                              ),
                              title:
                                  CommonTextWidget(text: AppStrings.siginwithbio),
                            ),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppIcons.shieldIcon,
                              width: 26,
                              height: 26,
                              fit: BoxFit.fill,
                              color: AppColor.buttoncolor,
                            ),
                            title: CommonTextWidget(
                                text: AppStrings.privacySetting),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///==============================3rd one ========================///
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: CommonTextWidget(
                      text: AppStrings.remitAssure,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Get.toNamed(Routes.aboutus);
                            },
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.infoIcon,
                                width: 26,
                                height: 26,
                                fit: BoxFit.fill,
                                color: AppColor.buttoncolor,
                              ),
                              title: CommonTextWidget(
                                  text: AppStrings.aboutus),
                            ),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppImages.applogo,
                              width: 26,
                              height: 26,
                              fit: BoxFit.fill,
                              color: AppColor.buttoncolor,
                            ),
                            title: CommonTextWidget(
                                text: AppStrings.rateremitAssuer),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: Image.asset(
                              AppIcons.cancelIcon,
                              width: 26,
                              height: 26,
                              fit: BoxFit.fill,
                              color: AppColor.buttoncolor,
                            ),
                            title:
                                CommonTextWidget(text: AppStrings.closeAccount),
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                          ),
                          InkWell(
                            onTap: () {
                             StorageHelper.eraseData();
                              Get.offAllNamed(Routes.login);
                            },
                            child: ListTile(
                              leading: Image.asset(
                                AppIcons.logoutIcon,
                                width: 26,
                                height: 26,
                                fit: BoxFit.fill,
                                color: AppColor.buttoncolor,
                              ),
                              title: CommonTextWidget(text: AppStrings.logout),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
//   Future<void > _authenticate()async{
// try{
// bool authenticate =await auth.authenticate(localizedReason:AppStrings.secureApp,
// options:  AuthenticationOptions(
//   stickyAuth: true,
//   biometricOnly: true,
//   useErrorDialogs: true,
//   sensitiveTransaction: true,
// )
// );
// log("authenticate====>$authenticate");
// }on PlatformException catch(e){
//   print(e);
// }
//   }

}
