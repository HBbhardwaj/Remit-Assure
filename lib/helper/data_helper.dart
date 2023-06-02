// ignore_for_file: require_trailing_commas

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freshproject/common_widget/common_text_field.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:get/get.dart';

// ignore: avoid_classes_with_only_static_members
class DataHelper {
  static logValue(String key, dynamic value) {
    log("$key ====> $value");
  }

  static RxBool isLogin = false.obs;
  static RxInt productId = 0.obs;
  static RxString fullPrice = ''.obs;

  static RxBool offerCheck = false.obs;
  static RxBool subscribeCheck = false.obs;
  static RxString gender = ''.obs;
  static RxBool isLoading = false.obs;

  static void changeLanguage(String lang) {
    // ignore: prefer_final_locals
    Locale locale = Locale(lang);
    Get.updateLocale(locale);
  }

  static void printLog(String key, dynamic value) {}

  static void debugPrintLog(String key, dynamic value) {
    debugPrint("$key ====> $value");
  }

  static void logData(String key, dynamic value) {}

  static showToast(String message) {
    /*  return Get.snackbar(
      AppStrings.message,
      message,
      snackPosition: SnackPosition.BOTTOM,
      colorText: AppColor.black,
      borderRadius: 10,
      backgroundColor:AppColor.buttoncolor,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
    );*/

    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        // timeInSecForIosWeb: 1,
        backgroundColor: AppColor.buttoncolor,
        textColor: AppColor.white,
        fontSize: AppTextSize.extraSmallTextSize);
  }

  static bool emailValidation(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  static showDialogBox(
      {required BuildContext context,
      required String msg,
      required Function()? onSuccessTap}) async {
    return await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: CustomText(
          txt: msg,
          alignment: TextAlign.start,
          fontSize: AppTextSize.idelTextSize,
        ),
        actions: [
          ElevatedButton(
            onPressed: onSuccessTap,
            child: CustomText(
              txt: AppStrings.yes,
              alignment: TextAlign.center,
              colour: AppColor.white,
            ),
          ),
          TextButton(
            onPressed: () => Get.back(),
            child: CustomText(
              txt: AppStrings.no,
              alignment: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

 static bool signUpValidate({
    required String email,
    required String location,
    required String password,
    required String mobile,
    required String referralCode,
    required bool isReferral,
   required bool isCheck,
  }) {
    if(location.isEmpty || location == AppStrings.countryDropDown[0]){
      showToast(AppError.pleaseSelectLocation);
      return false;
    }
    if(email.isEmpty){
      showToast(AppError.emailEmptyError);
      return false;
    }

    if(!emailValidation(email)){
      showToast(AppError.emailValidateError);
      return false;
    }


    if(mobile.isEmpty){
      showToast(AppError.mobileEmptyError);
      return false;
    }

    if(mobile.length < 10){
      showToast(AppError.mobileValidError);
      return false;
    }

    if(password.isEmpty){
      showToast(AppError.passwordEmptyError);
      return false;
    }

    if(isReferral){
      if(referralCode.isEmpty){
        showToast(AppError.referralCodeError);
        return false;
      }
    }

    if(!isCheck){
      showToast(AppError.checkTermsConditions);
      return false;

    }

    return true;
  }


static  bool loginValidate({
    required String email,
    required String password,
  }) {

    if(email.isEmpty){
      showToast(AppError.emailEmptyError);
      return false;
    }

    if(!emailValidation(email)){
      showToast(AppError.emailValidateError);
      return false;
    }




    if(password.isEmpty){
      showToast(AppError.passwordEmptyError);
      return false;
    }


    return true;
  }


//==================valid otp=========//
  static bool validateOtp({required String otp}){
    if(otp.isEmpty){
      showToast(AppError.emptyOtpError);
      return false;
    }

    if(otp.length < 6){
      showToast(AppError.validOtpError);
      return false;
    }
    return true;
  }
//==============resetPsswordEmail==============//
  static bool resetPasswordEmail({required String email}){
    if(email.isEmpty){
      showToast(AppError.emailValidateError);
      return false ;
    }
    return true;
  }
  ///=====================resetPassword=======///
  static bool resetpassword({required String reset_password_otp ,required String password}){
    if(reset_password_otp.isEmpty){
      showToast(AppError.emptyOtpError);
      return false;
    }
    if(password.isEmpty){
      showToast(AppError.passwordError);
      return false;
    }
    return true;
  }
  //==============updatePAssword==========//
static bool updatepassword({required String old_password , required String new_password}){
  logData("oldPass", old_password);
if(old_password.isEmpty){
  showToast(AppError.emptyOldPassword);
  return false;
}
if(new_password.isEmpty){
  showToast(AppError.newpasswordError);
  return false;
}
if(old_password != StorageHelper.readData(AppStorageKeys.USER_EMAIL)){
  showToast(AppError.wrongPassword);
}
return true;
}
//================exchnagerate=======//
static bool exchangePasword({required String amount , required String paymentMethod}){
  if(amount.isEmpty){
    showToast(AppError.enteramount);
    return false;
  }
  if(paymentMethod.isEmail ){
    showToast(AppError.bankMethod);
    return false;
  }
  return true;
}
}

