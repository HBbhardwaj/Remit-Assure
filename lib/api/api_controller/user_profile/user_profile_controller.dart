import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:freshproject/api/api_model/user_profile/user_profile_model.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';
import 'package:freshproject/services/rest_client.dart';

class UseraProfileController extends BaseController{
  Future <UserProfileModel> callUserProfiledata(

  )async{
UserProfileModel? userProfileModel ;
    try{
   final params  = <String , dynamic>{};
   final map =<String , dynamic>{};


     final formData = FormData.fromMap({
     
      });
     
       restClient = RestClient();
         final result = await restClient!
          .request(ApiUrl.getUserProfile, Method.POST, params, map, formData);
            if (result != null) {
        userProfileModel = UserProfileModel.fromJson(result);
        // StorageHelper.writeData("userId", id);
        return userProfileModel;
      }
    }catch(e){
rethrow;
    }
    return userProfileModel!;
  }

}