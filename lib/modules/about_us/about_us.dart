import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/common_widget/common_background.dart';
import 'package:freshproject/common_widget/common_text_field.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:get/get.dart';


class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                 SizedBox(
                      height: 40,
                    ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: InkWell(
                            onTap: (){
                              Get.offAllNamed(Routes.home);
                        
                            },
                            child: Image.asset(AppIcons.backIcon , height: 20, width: 20, color: AppColor.buttoncolor,)),
                         ),
                       
                       ],
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset(
                            AppImages.applogo,
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CommonTextWidget(
                            text: AppStrings.aboutus,
                            fontSize: AppTextSize.extraLargeTextSize,
                            fontWeight: FontWeight.w500,
                            color: AppColor.buttoncolor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            CustomText(txt:Aboutus.text , alignment: TextAlign.center,colour: AppColor.buttoncolor,fontWeight: FontWeight.bold,fontSize: AppTextSize.mediumTextSize),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CustomText(txt: Aboutus.data, alignment: TextAlign.justify),
                           ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            CustomText(txt:Aboutus.text , alignment: TextAlign.center,colour: AppColor.buttoncolor,fontWeight: FontWeight.bold,fontSize: AppTextSize.mediumTextSize),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CustomText(txt: Aboutus.data, alignment: TextAlign.justify),
                           ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomText(txt: AppStrings.contactus, alignment: TextAlign.start,fontSize: AppTextSize.extraLargeTextSize,colour: AppColor.buttoncolor,fontWeight: FontWeight.bold),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            CustomText(txt:Aboutus.contactus , alignment: TextAlign.center,colour: AppColor.buttoncolor,fontWeight: FontWeight.bold,fontSize: AppTextSize.mediumTextSize),
                            SizedBox(height: 10,),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CustomText(txt: Aboutus.data, alignment: TextAlign.justify),
                           ),
                          ],
                        ),
                      ),
                    ),
              ],
            ),
          ),
        )
    ],
   ),
    );
  }
}