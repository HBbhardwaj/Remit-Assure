import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';


class StepSixScreen extends StatelessWidget {
  const StepSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return  Card(
child:  Container(
padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
             const SizedBox(height: 20,),

              Center(
              //============text========//
              child: CommonTextWidget(
                text: StepperString.thankyou,
                color: AppColor.buttoncolor, 
                
                fontSize: AppTextSize.largeTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            //======add image =//
            Center(
              child: Image.asset(AppImages.thankyouImge),
            ),
SizedBox(height: 6,),
            Center(
              child: CommonTextWidget(text: StepperString.thanksForChoose),
            ),
            SizedBox(height: 40,)
          ],
        ),
),
      );
   
  }
}
