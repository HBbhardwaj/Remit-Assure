import 'package:freshproject/app_routes/routes.dart';
import 'package:freshproject/modules/Forget_Password_module/forget_password_ui/forget_passwrod.dart';
import 'package:freshproject/modules/about_us/about_us.dart';
import 'package:freshproject/modules/home_module/homePage_ui/homePage.dart';
import 'package:freshproject/modules/login_module/login_ui/loginPage.dart';
import 'package:freshproject/modules/my_account_module/my_Account_ui/my_Account.dart';
import 'package:freshproject/modules/my_profile/my_profile.dart';
import 'package:freshproject/modules/signup_module/signup_ui/signup.dart';
import 'package:freshproject/modules/splash_module/splash_ui/splash_screen.dart';
import 'package:freshproject/modules/stepper/stepper/stepper_ui.dart';
import 'package:freshproject/modules/update_profile/update_Profile.dart';
import 'package:get/get.dart';
import '../modules/Forget_Password_module/create_new_password_ui/create_new_paswword.dart';
import '../modules/otp_verification_module/otp_verification_ui/otp_verification.dart';
import '../modules/update_Password/update_password_Ui/update_password.dart';

List<GetPage> appRoutes() => [
      ///---- Splashscreen page ---///
      GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///---- Login page ---///
      GetPage(
        name: Routes.login,
        page: () =>  LoginScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///---- Signup page ---///
      GetPage(
        name: Routes.sigup,
        page: () => SignUpScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      ///================= OTP verfication  ==================//
      GetPage(
        name: Routes.otpverification,
        page: () =>  OtpVerficationScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration:const Duration(milliseconds: 500),
      ),

      ///---- Home page ---///
      GetPage(
        name: Routes.home,
        page: () => HomeScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration:const Duration(milliseconds: 500),
      ),

      ///=================My Account  ==================//
      GetPage(
        name: Routes.myAccount,
        page: () =>  MYAccountPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration:const Duration(milliseconds: 500),
      ),

       ///=================Stepper==================//
      GetPage(
        name: Routes.stepper,
        page: () =>  StepperScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration:const Duration(milliseconds: 500),
      ),
      //================forget Password =========//
      GetPage(
      name: Routes.frogetpassword, 
      page: ()=> ForgetPassword(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      ),
      //===========create new passcode =//
      GetPage(
        name: Routes.createnewpassword,
       page:()=> CreateNewPassword(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: const Duration(microseconds: 500),
       ),
       //=================my profile page ===========//
       GetPage(
        name: Routes.myprofiole,
       page:()=> MyProfilePage(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: const Duration(microseconds: 500),
       ),
       //=============update Passcode===//
       GetPage(name: Routes.updatePassword, 
       page: ()=> UpdatePasswordPage(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: const Duration(milliseconds: 500),
       ),
       //==================update profile=========//
        GetPage(name: Routes.updateProfile, 
       page: ()=> UpdateProfilePage(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: const Duration(milliseconds: 500),
       ),
        //==================about us=========//
        GetPage(name: Routes.aboutus, 
       page: ()=> AboutUsPage(),
       transition: Transition.leftToRightWithFade,
       transitionDuration: const Duration(milliseconds: 500),
       )
    ];
