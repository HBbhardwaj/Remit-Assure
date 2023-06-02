import 'package:flutter/material.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/common_widget/common_background.dart';
import 'package:freshproject/common_widget/common_text_feild.dart';

import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:freshproject/view_controller/home/home_controller.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';

class MyProfilePage extends StatelessWidget {
  MyProfilePage({Key? key}) : super(key: key);
  final _homeController = Get.put(HomeController());

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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                   SizedBox(
                    height: 40,
                  ),
                  //===========edit icon============//
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
                       Spacer(),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10),
                         child: InkWell(
                          onTap: (){
                            Get.offAllNamed(Routes.updateProfile);
                      
                          },
                          child: Image.asset(AppIcons.editprofile , height: 36, width: 36, color: AppColor.buttoncolor,)),
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
                      CommonTextWidget(
                      
                        text: AppStrings.appName,
                        fontSize: AppTextSize.mediumTextSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: CommonTextWidget(
                          text: UserProfileString.pernoalinfromation,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  ///==============card 1 ===========//
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          //===========first name====///
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.firstName,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: firstNameController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: UserProfileString.cfirstName,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //========middle name==========//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.middlename,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: middleNameController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: middleNameController == ""
                                  ? ""
                                  : UserProfileString.clastname,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //============last name==========//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.lastname,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: lastNameController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: lastNameController == ""
                                  ? ""
                                  : UserProfileString.clastname,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //=============custmerID==========//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.custmerId,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: custmerIdController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: custmerIdController == ""
                                  ? ""
                                  : UserProfileString.cCustmerId,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //=============email id==========//

                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.email,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: email_Controller,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: email_Controller == ""
                                  ? ""
                                  : UserProfileString.cemail,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //==============mobile number==========//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.mobile,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: mobileNoController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: mobileNoController == ""
                                  ? ""
                                  : UserProfileString.cno,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //=======date of birth============//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.dateofbirth,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: dateofbirth,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: dateofbirth == ""
                                  ? ""
                                  : UserProfileString.cdateofbirth,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //==========gender selection=======//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.gender,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 6),
                              Container(
                                height: 45,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 2.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2.0,
                                  horizontal: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Obx(
                                  () => DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      
                                      value:
                                          _homeController.selectedGender.value,
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: AppStrings.GenderDropDown.map(
                                          (String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: CommonTextWidget(
                                            text: items,
                                            fontSize: AppTextSize.smallTextSize,
                                            textAlign: TextAlign.start,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: null
                                      // (String? newValue) {
                                      //   _homeController.selectedGender.value =
                                      //       newValue!;
                                      // },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //==counrtry of birth=//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.countryofbirth,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 2.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2.0,
                                  horizontal: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Obx(
                                  () => DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value:
                                          _homeController.selectedCountry.value,
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: AppStrings.countryDropDown
                                          .map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: CommonTextWidget(
                                            text: items,
                                            fontSize: AppTextSize.smallTextSize,
                                            textAlign: TextAlign.start,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged:null
                                      //  (String? newValue) {
                                      //   _homeController.selectedCountry.value =
                                      //       newValue!;
                                      // },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///============================2nd==================//
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: CommonTextWidget(
                          text: UserProfileString.address,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          //============flat/Unit no===//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.flatno,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: flatUnitNoController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: flatUnitNoController == ""
                                  ? ""
                                  : UserProfileString.eflatno,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //=========buildinf no.===========//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.buildingno,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: buildingNoController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: buildingNoController == ""
                                  ? ""
                                  : UserProfileString.ebuildingno,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          //=========Street=======//
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.street,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: streetNoController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: streetNoController == ""
                                  ? ""
                                  : UserProfileString.estreet,
                            ),
                          ),
                          //==============postcode===========//
                           Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.postcode,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                              isEnabled: _homeController.iswrite.value ,
                              controller: postcodeNoController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: postcodeNoController == ""
                                  ? ""
                                  : UserProfileString.epostcode,
                            ),
                          ),
                            //================city/town============//
                            Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.cityTown,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                                 isEnabled: _homeController.iswrite.value ,
                              controller: ctiyTownController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: ctiyTownController == ""
                                  ? ""
                                  : UserProfileString.ecityTown,
                            ),),
                            //===========state====//
                            Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.state,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CustomTextField(
                                 isEnabled: _homeController.iswrite.value ,
                              controller: stateController,
                              pLeft: 10.0,
                              pRight: 10.0,
                              borderColor: AppColor.lightGreyDark,
                              keyboardType: TextInputType.text,
                              hintText: stateController == ""
                                  ? ""
                                  : UserProfileString.estate,
                            ),),
                            //==========country===//
                               Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: CommonTextWidget(
                                text: UserProfileString.country,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 45,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 2.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2.0,
                                  horizontal: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Obx(
                                  () => DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value:
                                          _homeController.selectedCountry.value,
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: AppStrings.countryDropDown
                                          .map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: CommonTextWidget(
                                            text: items,
                                            fontSize: AppTextSize.smallTextSize,
                                            textAlign: TextAlign.start,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: null
                                      // (String? newValue) {
                                      //   _homeController.selectedCountry.value =
                                      //       newValue!;
                                      // },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,)
                            ],
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
}
