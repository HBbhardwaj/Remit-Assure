import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';
import 'package:freshproject/services/rest_client.dart';
import 'package:freshproject/utils/app_controller.dart';

import '../../api_model/update_profile_model/update_profile_model.dart';

class UpdateUserProfile extends BaseController {
  Future<UpdateUserProfileModel> callUpdateUserProfile({
    required String? email,
    required String? First_name,
    required String? Middle_name,
    required String? Last_name,
    required String? Date_of_birth,
    required String? Gender,
    required String? Country_of_birth,
    required String? flat,
    required String? building,
    required String? street,
    required String? postcode,
    required String? city,
    required String? state,
    required String? country,
    required String? type,
  }) async {
    UpdateUserProfileModel? userProfileModel;
    try {
      final params = <String, dynamic>{};
      final map = <String, dynamic>{};
      if (email!.isNotEmpty) {
        map["email"] = email;
      }
      if (First_name!.isNotEmpty) {
        map['First_name'] = First_name;
      }
      if (Middle_name!.isNotEmpty) {
        map["Middle_name"] = Middle_name;
      }
      if (Last_name!.isNotEmpty) {
        map["Last_name"] = Last_name;
      }
      if(Date_of_birth!.isNotEmpty){
        map['Date_of_birth'] = Date_of_birth;
        }
      if(Gender!.isNotEmpty){
        map['Gender'] = Gender;
        }
      if(Country_of_birth!.isNotEmpty){
      map["Country_of_birth"] = Country_of_birth;
      }
      if(flat!.isNotEmpty){
      map['flat'] = flat;
      }
      if(building!.isNotEmpty){
      map["building"] = building;
      }
      if(street!.isNotEmpty){
       map["street"] = street;
      }
      if(postcode!.isNotEmpty){
       map["postcode"] = postcode;
      }
      if(city!.isNotEmpty){
       map['city'] = city;
      }
      if(state!.isNotEmpty){
       map["state"] = state;
      }
      if(country!.isNotEmpty){
       map["country"] = country;
      }
      map["type"] = type;
      final formData = FormData.fromMap({});

      restClient = RestClient();
      final result = await restClient!
          .request(ApiUrl.updateprofile, Method.POST, params, map, formData);
      if (result != null) {
        userProfileModel = UpdateUserProfileModel.fromJson(result);
        // StorageHelper.writeData("userId", id);
        return userProfileModel;
      }
    } catch (e) {
      rethrow;
    }
    return userProfileModel!;
  }
}
