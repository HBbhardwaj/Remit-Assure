import 'package:dio/dio.dart';
import 'package:freshproject/api/api_model/login/login_model.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';
import 'package:freshproject/services/rest_client.dart';
import '../base_controller.dart';
class LoginController extends BaseController {
  Future<LoginPageModel> callLoginApi(
    String email,
    String password,
    String type,
  ) async {
    LoginPageModel ? dataModel;
    try {
      final params = <String, dynamic>{};
      final map = <String, dynamic>{};
      map['email'] = email;
      map['type'] = type;
      map['password'] = password;

      final formData = FormData.fromMap({
     
      });

      restClient = RestClient();
      final result = await restClient!
          .request(ApiUrl.login, Method.POST, params, map, formData);
          DataHelper.debugPrintLog("loginResult", result);
      if (result != null) {
        dataModel = LoginPageModel.fromJson(result);
        // StorageHelper.writeData("userId", id);
        return dataModel;
      }
      //return dataModel!;
    } catch (e) {
      
      rethrow;
    }

    return dataModel!;
  }
}