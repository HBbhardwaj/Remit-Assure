import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:freshproject/api/api_model/reset_password_email/reset_password_email_model.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';
import 'package:freshproject/services/rest_client.dart';


class RestPasswordEmail extends BaseController{
  Future<dynamic>callResentPasswordEmail({
   required String ? email ,
   required String ?type ,
  })async{
    ResetPasswordEmailModel ? resetPasswordEmailModel;
    try{
   final params  = <String , dynamic>{};
   final map =<String , dynamic>{};
    map["email"]= email;
    map["type"]=type;

     final formData = FormData.fromMap({
     
      });
     
       restClient = RestClient();
         final result = await restClient!
          .request(ApiUrl.resetPasswordemail, Method.POST, params, map, formData);
            if (result != null) {
        resetPasswordEmailModel = ResetPasswordEmailModel.fromJson(result);
        // StorageHelper.writeData("userId", id);
        return resetPasswordEmailModel;
      }
    }catch(e){
rethrow;
    }
  }
}