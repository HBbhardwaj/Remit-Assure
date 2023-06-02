


import 'dart:math';

import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';

import '../../../helper/data_helper.dart';
import '../../../services/api_url.dart';
import '../../../services/method.dart';
import '../../../services/rest_client.dart';
import '../../api_model/email_verification_model/email_verification_model.dart';

class EmailVerificationController extends BaseController{


  Future<EmailVerification> callEmailVerification({
   required String emailOtp,
   required String email
  }) async {
    EmailVerification? emailVerification;
    try {
      final params = <String, dynamic>{};
      final map = <String, dynamic>{};
      map['email_otp'] = emailOtp;
      map['email'] = email;
      map['type'] = ApiUrl.userType;

      final formData = FormData.fromMap({
      });

      restClient = RestClient();
      final result = await restClient!
          .request(ApiUrl.verifyEmail, Method.POST, params, map, formData);
      DataHelper.debugPrintLog("emailVerification", result);
      if (result != null) {
        emailVerification = EmailVerification.fromJson(result);
        return emailVerification;
      }
    } catch (e) {
      rethrow;
    }

    return emailVerification!;
  }

}