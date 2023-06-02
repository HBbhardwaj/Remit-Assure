import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:freshproject/api/api_model/set_new_password/set_new_password.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';

class RestePassword extends BaseController{
  Future<dynamic>callResetPassword({
    required String ? customer_id,
    required String ? password,
    required String ? reset_password_otp,
    required String ? type, 
  })async{
    SetNewPasswordModel ? data ;
    try{
   final params = <String , dynamic>{};
   final map =<String , dynamic>{};
   map['customer_id']=customer_id;
   map['password']=password;
   map['reset_password_otp']=reset_password_otp;
   map['type']=type;
   final fromdata = FormData.fromMap({

   });
   final result =await restClient!.request(ApiUrl.resetPassword, Method.POST, params, map, fromdata);

   if(result != null){
    data =SetNewPasswordModel.fromJson(result);
    return data ;

   }
    }catch(e){
  rethrow ;
    }
  }
}