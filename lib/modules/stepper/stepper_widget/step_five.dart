import 'package:flutter/material.dart';

import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:get/get.dart';

class StepfiveScreen extends StatelessWidget {
  const StepfiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
child: Container(
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
                text: StepperString.paymentSummary,
                color: AppColor.buttoncolor, 
                
                fontSize: AppTextSize.largeTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            //============card========//
             SizedBox(
              height: 40,
              width: Get.width,
               child: Card(
                color: AppColor.cardcolor,
                 child: Center(
                   child: CommonTextWidget(
                      text: StepperString.transactionDetails,
                      fontSize: AppTextSize.normalTextSize,
                      fontWeight: FontWeight.w400,
                    ),
                 ),
               ),
             ),
             //============ transaction Details =====//
              Divider(height: 2,thickness: 1,),
             ListTile(
              leading: CommonTextWidget(text: StepperString.amounttosend),
              trailing:  CommonTextWidget(text: StepperString.eur),
             ),
             Divider(height: 2,thickness: 1,),
             
             ListTile(
              leading: CommonTextWidget(text: StepperString.fees),
              trailing:  CommonTextWidget(text: StepperString.noValue),
             ),
             Divider(height: 2,thickness: 1,),
             ListTile(
              leading: CommonTextWidget(text: StepperString.totalcost),
              trailing:  CommonTextWidget(text: StepperString.noValue),
             ),
              Divider(height: 2,thickness: 1,),
                //============card========//
             SizedBox(
              height: 40,
              width: Get.width,
               child: Card(
                color: AppColor.cardcolor,
                 child: Center(
                   child: CommonTextWidget(
                      text: StepperString.transferto,
                      fontSize: AppTextSize.normalTextSize,
                      fontWeight: FontWeight.w400,
                    ),
                 ),
               ),
             ),
             //
              //============ transaction Details =====//
      
             Divider(height: 2,thickness: 1,),
             
             ListTile(
              leading: CommonTextWidget(text: StepperString.accountno),
              trailing:  CommonTextWidget(text: StepperString.noValue),
             ),
             Divider(height: 2,thickness: 1,),
             ListTile(
              leading: CommonTextWidget(text: StepperString.accountName),
              trailing:  CommonTextWidget(text: StepperString.noValue),
             ),
              Divider(height: 2,thickness: 1,),
                ListTile(
              leading: CommonTextWidget(text: StepperString.backname),
              trailing:  CommonTextWidget(text: StepperString.noValue),
             ),
             Divider(height: 2,thickness: 1,),
             ListTile(
              leading: CommonTextWidget(text: StepperString.totalRecipientRecvied),
              trailing:  CommonTextWidget(text: StepperString.inr),
             ),
              Divider(height: 2,thickness: 1,),
               ListTile(
              leading: CommonTextWidget(text: StepperString.receivedmethod),
              trailing:  CommonTextWidget(text: StepperString.noValue),
             ),
              Divider(height: 2,thickness: 1,),
              SizedBox(height: 20,)
          ],
        ),
),
    );
  }
}
