import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freshproject/api/api_controller/email_verification/email_verification_controller.dart';
import 'package:freshproject/api/api_controller/exchange_rate/echnage_rate_controller.dart';
import 'package:freshproject/api/api_controller/login/login_controller.dart';
import 'package:freshproject/api/api_controller/reset_password/reset_password.dart';
import 'package:freshproject/api/api_controller/reset_password_email/reset_password_email_controller.dart';
import 'package:freshproject/api/api_controller/signup/signup_controller.dart';
import 'package:freshproject/api/api_controller/update_user_profile/update_user_profile_controller.dart';
import 'package:freshproject/api/api_controller/user_profile/user_profile_controller.dart';
import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/helper/storage_helper.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_controller.dart';
import 'package:freshproject/utils/app_images.dart';
import 'package:freshproject/utils/app_strings.dart';
import 'package:freshproject/utils/app_text_sizes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../api/api_controller/update_password/update_Password_controller.dart';
import '../../modules/bottom_navigation_module/bottomNavigationBar_ui/chat.dart';
import '../../modules/bottom_navigation_module/bottomNavigationBar_ui/dashborad.dart';
import '../../modules/bottom_navigation_module/bottomNavigationBar_ui/send.dart';
import '../../modules/bottom_navigation_module/bottomNavigationBar_ui/setting.dart';
import '../../modules/home_module/model/homePage/homepage_model.dart';
import '../../modules/my_account_module/my_Account_ui/my_Account.dart';
import '../../modules/stepper/stepper_models/radio_text_feild_model.dart';

// ignore: public_member_api_docs
class HomeController extends GetxController {
  RxBool isCheck = false.obs;
  RxBool iswrite = false.obs;
  RxBool isReferCode = false.obs;

  RxInt currentTab = 0.obs;
  RxList<Widget> screenList = <Widget>[].obs;
  RxString otp = "".obs;
  RxString selectedCountry = AppStrings.countryDropDown[0].obs;
  RxString selectedGender = AppStrings.GenderDropDown[0].obs;
  RxString selectBank = AppStrings.TranferbankDropDown[0].obs;
  RxString sendmoneytoCountry = AppStrings.moneytranferCountry[0].obs;
  RxString sendmoneytoCountry1 = AppStrings.moneytranferCountrythey[0].obs;
  RxInt currentStep = 0.obs;

  RxList<HomePageModel> homeList = <HomePageModel>[].obs;



  @override
  void onInit() {
    RxString dateofbirthtext = "".obs;
    screenList.value = [
      Deshborad(),
      const chat(),
      const Send(),
      const Setting(),
      MYAccountPage(),
    ];

    homeList.value = [
      HomePageModel(
        AppStrings.transfertoisu,
        AppStrings.aud356,
        AppStrings.bankdeposit,
        AppStrings.date,
        AppStrings.complateTransfer,
        AppIcons.nextIcon,
        AppIcons.snedIcon,
      ),
      HomePageModel(
        AppStrings.transfertoisu,
        AppStrings.aud356,
        AppStrings.bankdeposit,
        AppStrings.date,
        AppStrings.complateTransfer,
        AppIcons.nextIcon,
        AppIcons.snedIcon,
      ),
      HomePageModel(
        AppStrings.transfertoisu,
        AppStrings.aud356,
        AppStrings.bankdeposit,
        AppStrings.date,
        AppStrings.complateTransfer,
        AppIcons.nextIcon,
        AppIcons.snedIcon,
      ),
      HomePageModel(
        AppStrings.transfertoisu,
        AppStrings.aud356,
        AppStrings.bankdeposit,
        AppStrings.date,
        AppStrings.complateTransfer,
        AppIcons.nextIcon,
        AppIcons.snedIcon,
      ),
      HomePageModel(
        AppStrings.transfertoisu,
        AppStrings.aud356,
        AppStrings.bankdeposit,
        AppStrings.date,
        AppStrings.complateTransfer,
        AppIcons.nextIcon,
        AppIcons.snedIcon,
      ),
    ];

    super.onInit();
  }

  void onTab(int index) {
    currentTab.value = index;
    screenList.refresh();
  }

  //===================list of radio button use in setp1===========//
  RxList<RadioTextFeildModel> radioTextFeildModelList = <RadioTextFeildModel>[
    RadioTextFeildModel(false, StepperString.banktransfer),
    RadioTextFeildModel(false, StepperString.mobilewallet),
  ].obs;

  RxList<RadioTextFeildModel> radioTextFeildModelList1 = <RadioTextFeildModel>[
    RadioTextFeildModel(false, StepperString.bank),
    RadioTextFeildModel(false, StepperString.service),
  ].obs;

  RxList<RadioTextFeildModel> paymentdetailtabList = <RadioTextFeildModel>[
    RadioTextFeildModel(false, StepperString.osko),
    RadioTextFeildModel(false, StepperString.debitandcreditcard),
    RadioTextFeildModel(false, StepperString.poliInternalBancking),
  ].obs;

  void clearController() {
    emailController.clear();
    passwordController.clear();
    phonenumberController.clear();
    selectedCountry.value = AppStrings.countryDropDown[0];
    isReferCode.value = false;
    referalcodeController.clear();
    isCheck.value = false;
  }

  //==========================Login& Registration=======================//
  void callLoginApi({
    required String email,
    required String password,
    required String type,
  }) {
    Get.put(LoginController())
        .callLoginApi(email, password, type)
        .then((value) {
      DataHelper.debugPrintLog("login", value);
      if (value.code == "200") {
        DataHelper.isLoading.value = false;

        StorageHelper.writeData(
            AppStorageKeys.ACCESS_TOKEN, value.access_token!);

        //  DataHelper.debugPrintLog("", value)
        Get.toNamed(Routes.home);
      } else if (value.code == "400") {
        Fluttertoast.showToast(
            msg: value.message.toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: AppColor.buttoncolor,
            textColor: AppColor.white,
            fontSize: AppTextSize.extraSmallTextSize);
      }
      DataHelper.isLoading.value = false;
    });
  }

//================registerApi===========//
  void callRegisterApi({
    required String email,
    required String password,
    required String location,
    required String mobile,
    required String referralCode,
    required String promo_marketing,
  }) {
    if (DataHelper.signUpValidate(
        email: email,
        location: location,
        password: password,
        mobile: mobile,
        referralCode: referralCode,
        isReferral: isReferCode.value,
        isCheck: isCheck.value)) {
      DataHelper.isLoading.value = true;
      Get.put(SignUpController())
          .callRegisterApi(
        email,
        password,
        location,
        mobile,
        referralCode,
        promo_marketing,
      )
          .then((value) {
        DataHelper.isLoading.value = false;
        if (value.code == "200") {
          StorageHelper.writeData(AppStorageKeys.USER_ID, value.data!.id);

          StorageHelper.writeData(
              AppStorageKeys.CUSTOMER_ID, value.data!.customer_id!);
          StorageHelper.writeData(
              AppStorageKeys.USER_LOCATION, value.data!.location!);
          StorageHelper.writeData(AppStorageKeys.USER_EMAIL, value.data!.email);
          // StorageHelper.writeData(AppStorageKeys.USER_Password, value.data.)
          debugPrint("========signup====>${AppStorageKeys.USER_EMAIL}");
          StorageHelper.writeData(
              AppStorageKeys.USER_MOBILE, value.data!.mobile!);
          // StorageHelper.writeData(AppStorageKeys.USER_MOBILE, value.data!.);

          DataHelper.debugPrintLog(
              "dataToken", StorageHelper.readData(AppStorageKeys.ACCESS_TOKEN));
          clearController();

          Get.toNamed(Routes.otpverification);
        }
        DataHelper.showToast(value.message!);
      });
    }
  }

//==================otp verfication ==============//
  void callEmailVerification({required String otp, required String email}) {
    if (DataHelper.validateOtp(otp: otp)) {
      DataHelper.isLoading.value = true;
      StorageHelper.readData(AppStorageKeys.USER_EMAIL);
      // StorageHelper.writeData(AppStorageKeys.USER_ID, Value.access_token);

      debugPrint(
          "======read======>${StorageHelper.readData(AppStorageKeys.USER_EMAIL)}");
      Get.put(EmailVerificationController())
          .callEmailVerification(emailOtp: otp, email: email)
          .then((value) {
        DataHelper.isLoading.value = false;
        debugPrint("============>${AppStorageKeys.USER_EMAIL}");
        if (value.code == "200") {
          clearOtpController();
          Get.toNamed(Routes.stepper);
        }
        DataHelper.showToast(value.message!);
      });
    }
  }

  //==================resetpasswordEmail ==========//
  void callResentPasswordEmail({required String email, required String type}) {
    if (DataHelper.resetPasswordEmail(email: email)) {
      DataHelper.isLoading.value == true;
      StorageHelper.readData(AppStorageKeys.USER_EMAIL);
      //debugPrint("======checking ======>${ StorageHelper.readData(AppStorageKeys.USER_EMAIL)}");
      Get.put(RestPasswordEmail())
          .callResentPasswordEmail(email: email, type: type)
          .then((value) {
        if (value.code == '200') {
          StorageHelper.writeData(
              AppStorageKeys.CUSTOMER_ID, value.data!.customer_id!);

          DataHelper.debugPrintLog(
              "clientId", StorageHelper.readData(AppStorageKeys.CUSTOMER_ID));
          ClearemailController();
          Get.toNamed(Routes.createnewpassword);
        }
        DataHelper.showToast(value.message!);
      });
    }
  }

  //==================SetNewPassword=============//
  void callResetPassword({
    required String customer_id,
    required String password,
    required String reset_password_otp,
    required String type,
  }) {
    if (DataHelper.resetpassword(
        password: password, reset_password_otp: reset_password_otp)) {
      DataHelper.isLoading.value == true;
      Get.put(RestePassword())
          .callResetPassword(
              customer_id: customer_id,
              password: password,
              reset_password_otp: reset_password_otp,
              type: type)
          .then((value) {
        if (value.code == '200') {
          //StorageHelper.writeData(AppStorageKeys.CUSTOMER_ID , value.data!.customer_id !);
          // StorageHelper.writeData(AppStorageKeys.USER_ID, value.data!.);
          ClearsetpasscodeController();
          Get.toNamed(Routes.login);
        }
        DataHelper.showToast(value.message!);
      });
    }
  }

  //==================userprofile=========//
  void callUserProfiledata() {
    DataHelper.isLoading.value == true;
    Get.put(UseraProfileController()).callUserProfiledata().then((value) {
      if (value.code == '200') {
        if (value.data!.country!.isNotEmpty) {
          selectedCountry.value = value.data!.country!;
        } else {
          selectedCountry.value = AppStrings.countryDropDown[0];
        }
        if (value.data!.Gender!.isNotEmpty) {
          selectedGender.value = value.data!.Gender!;
        } else {
          selectedGender.value = AppStrings.GenderDropDown[0];
        }
        DataHelper.debugPrintLog("gender", selectedGender.value);
        email_Controller.text = value.data!.email ?? "";
        lastNameController.text = value.data!.Last_name ?? "";
        middleNameController.text = value.data!.Middle_name ?? "";
        firstNameController.text = value.data!.First_name ?? "";
        dateofbirth.text = value.data!.Date_of_birth ?? "";
        custmerIdController.text = value.data!.customer_id ?? "";
        stateController.text = value.data!.state ?? "";
        ctiyTownController.text = value.data!.city ?? "";
        postcodeNoController.text = value.data!.postcode ?? "";
        streetNoController.text = value.data!.street ?? "";
        buildingNoController.text = value.data!.building ?? "";
        flatUnitNoController.text = value.data!.flat ?? "";
        mobileNoController.text = value.data!.mobile ?? "";
        DataHelper.debugPrintLog("=============>Chefkinf data===", value);

        //ClearsetpasscodeController();
        Get.toNamed(Routes.myprofiole);
      }
      DataHelper.showToast(value.message!);
    });
  }

  //=================updatePassword============//
  void callUpdatePassword(
      {required String old_password,
      required String new_password,
      required String type}) {
    if (DataHelper.updatepassword(
        new_password: new_password, old_password: old_password)) {
      DataHelper.isLoading.value == true;
      Get.put(UpdatePasswordController())
          .callUpdatePassword(
              old_password:
                  StorageHelper.readData(AppStorageKeys.USER_Password),
              new_password: new_password,
              type: type)
          .then((value) {
        if (value.code == '200') {
          Clearupdatepassword();
          Get.toNamed(Routes.myAccount);
        }
      });
    }
  }

//=================updateprofile==========//
  void callUpdateUserProfile({
    required String email,
    required String First_name,
    required String Middle_name,
    required String Last_name,
    required String Date_of_birth,
    required String Gender,
    required String Country_of_birth,
    required String flat,
    required String building,
    required String street,
    required String postcode,
    required String city,
    required String state,
    required String country,
    required String type,
  }) {
    DataHelper.isLoading.value == true;
    Get.put(UpdateUserProfile())
        .callUpdateUserProfile(
            email: email,
            First_name: First_name,
            Middle_name: Middle_name,
            Last_name: Last_name,
            Date_of_birth: Date_of_birth,
            Gender: Gender,
            Country_of_birth: Country_of_birth,
            flat: flat,
            building: building,
            street: street,
            postcode: postcode,
            city: city,
            state: state,
            country: country,
            type: type)
        .then((value) {
      if (value.code == "200") {
        Get.toNamed(Routes.myprofiole);
      }
    });
  }

  //============exchangeRate===========//
  void callexchangerateApi({
    required String amount,
    required String from,
    required String to,
    required String paymentMethod,
    required String type,
  }) {
    if(DataHelper.exchangePasword(amount:amount,paymentMethod: paymentMethod )){
 Get.put(ExchangeRateController())
        .callexchangerateApi(
            amount: amount,
            from: from,
            to: to,
            paymentMethod: paymentMethod,
            type: type)
        .then((value) {
      if (value.code == "200") {
        Get.toNamed(Routes.splashScreen);
      }
    }   );
    }

  }
}
