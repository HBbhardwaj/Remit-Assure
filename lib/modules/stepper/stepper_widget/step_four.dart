import 'package:flutter/material.dart';
import 'package:freshproject/common_widget/common_dropdown.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';

class StepFourScreen extends StatelessWidget {
  const StepFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Card(
     child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              //============text========//
              child: CommonTextWidget(
                text: StepperString.senderDetails,
                color: AppColor.buttoncolor, 
                
                fontSize: AppTextSize.largeTextSize,
                fontWeight: FontWeight.bold,
              ),
             
             
            ),
              const SizedBox(
              height: 20.0,
            ),
             //========payment type====//
             const SizedBox(height: 6.0,),
           CommonTextWidget(
              text: StepperString.paymenttype,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
              fontWeight: FontWeight.w500,
            ),
             const SizedBox(
              height: 20.0,
            ),
           
              
            CommonTextWidget(
              text: StepperString.firstName,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: firstNameController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.efirstName,
            ),
             const SizedBox(height: 10.0,),

              //=============middle name==//
              CommonTextWidget(
              text: StepperString.middleName,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: middleNameController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.emiddleName,
            ),
             const SizedBox(height: 10.0,),
            //=========last name===========//

               CommonTextWidget(
              text: StepperString.lastName,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: lastNameController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.elastName,
            ),
             const SizedBox(height: 10.0,),
            //======county dropdown========//
             const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.countryofbirth,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),
            const SizedBox(height: 6.0,),
             CommonDropDownBox(),
              const SizedBox(height: 10.0,),
              //===email=====//
               
             CommonTextWidget(
              text: StepperString.mail,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: emailController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.email,
            ),
             const SizedBox(height: 10.0,),
             //========mobile number====//
              CommonTextWidget(
              text: StepperString.mobile,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: phonenumberController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.emobile,
            ),
             const SizedBox(height: 10.0,),
               CommonTextWidget(
              text: StepperString.address,
              fontWeight: FontWeight.bold),

            const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.flatUnitNo,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: flatUnitNoController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.eflatUnitNo,
            ),
             const SizedBox(height: 10.0,),
             //building no===========//

               const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.buildingNo,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: buildingNoController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.ebuildingNo,
            ),
             const SizedBox(height: 10.0,),
             //=========street===========//
             
               const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.street,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: streetNoController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.estreet,
            ),
             const SizedBox(height: 10.0,),
             //============postcode=======//
              const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.postCode,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: postcodeNoController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.epostCode,
            ),
             const SizedBox(height: 10.0,),
             //========city/town========//
              const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.cityTown,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: postcodeNoController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.ecityTown,
            ),
             const SizedBox(height: 10.0,),
             //=======state=========//
              const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.state,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: stateController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.estate,
            ),
             const SizedBox(height: 10.0,),
             //=========country code=====//
              const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.countryCode,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
            CustomTextField(
              controller: stateController,
              pLeft: 10.0,
              pRight: 10.0,
              borderColor: AppColor.lightGreyDark,
              keyboardType: TextInputType.text,
               hintText: StepperString.ecountryCode,
            ),
            const SizedBox(height: 10.0,),
             //=========country Name=====//
              const SizedBox(height: 10.0,),
              CommonTextWidget(
              text: StepperString.countryName,
              color: AppColor.black,
              fontSize: AppTextSize.idelTextSize,
            ),

            const SizedBox(height: 6.0,),
             CommonDropDownBox(),
              const SizedBox(height: 20.0,),
           
             
          ],
        ),
     ),
    );
  }
}
