 import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:freshproject/api/api_model/update_password_model/update_password_model.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';
import 'package:freshproject/services/rest_client.dart';

class UpdatePasswordController extends BaseController{
    Future <UpadtePasswordModel> callUpdatePassword({
    required String ? old_password ,
    required String  ?new_password,
   required String ?type ,
    }

  )async{
UpadtePasswordModel? userProfileModel ;
    try{
   final params  = <String , dynamic>{};
   final map =<String , dynamic>{};

   map["old_password"]= old_password;
   map['new_password']=new_password;
   map["type"]=type;
     final formData = FormData.fromMap({
     
      });
     
       restClient = RestClient();
         final result = await restClient!
          .request(ApiUrl.updatepassword, Method.POST, params, map, formData);
            if (result != null) {
        userProfileModel = UpadtePasswordModel.fromJson(result);
        // StorageHelper.writeData("userId", id);
        return userProfileModel;
      }
    }catch(e){
rethrow;
    }
    return userProfileModel!;
  }
}