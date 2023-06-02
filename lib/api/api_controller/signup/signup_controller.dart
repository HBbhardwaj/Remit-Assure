


import 'package:dio/dio.dart';
import 'package:freshproject/api/api_model/register/register_model.dart';
import 'package:freshproject/helper/data_helper.dart';

import '../../../services/api_url.dart';
import '../../../services/method.dart';
import '../../../services/rest_client.dart';
import '../base_controller.dart';
class SignUpController extends BaseController {
  Future<SignupModel> callRegisterApi(
    String email,
    String password,
    String location,
    String mobile,
    String referralCode,
    String promoMarketing,
  ) async {
    SignupModel? dataModel;
    try {
      final params = <String, dynamic>{};
      final map = <String, dynamic>{};
      map['email'] = email;
    
      map['type'] = ApiUrl.userType;
      map['password'] = password;
      map['location']= location;
      map['mobile']= mobile;
      //map['promo_marketing']=promoMarketing;
      if(referralCode.isNotEmpty){
        map["referral_code"]= referralCode;
      }
      if(promoMarketing.isNotEmpty){
        map['promo_marketing'] = promoMarketing;
      }
      final formData = FormData.fromMap({
      });

      restClient = RestClient();
      final result = await restClient!
          .request(ApiUrl.register, Method.POST, params, map, formData);
          DataHelper.debugPrintLog("registerResponse", result);
      if (result != null) {
      //  dataModel = SignupModel.fromJson(result);
        return SignupModel.fromJson(result);
      }
    } catch (e) {
      rethrow;
    }

    return dataModel!;
  }
}
