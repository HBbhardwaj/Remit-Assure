import 'package:json_annotation/json_annotation.dart';
  part 'login_model.g.dart';
@JsonSerializable()
class LoginPageModel{
String ? code;
String ? message;
String? access_token;
LoginPageData? data;
LoginPageModel({ this.code , this.message , this.access_token , this.data});

factory LoginPageModel.fromJson(Map<String , dynamic> json) =>
_$LoginPageModelFromJson(json);

Map<String , dynamic>toJson()=> _$LoginPageModelToJson(this);

}
@JsonSerializable()
class LoginPageData{
  String ? id;
  String ? customer_id;
  String ? email;
  String ? First_name;
  String ? Middle_name;
  String ? Last_name;
  String ? Date_of_birth;
  String ? Gender;
  String ? Country_of_birth;
  String ? mobile;
  String ? location;
  String ? digital_id_verified;
  LoginPageData({this.id, this.customer_id , this.email , this.First_name , this.Middle_name , this.Last_name, this.Date_of_birth , this.Gender , this.Country_of_birth , this.mobile , this.location , this.digital_id_verified});
  factory LoginPageData.fromJson(Map<String , dynamic>json)=> _$LoginPageDataFromJson(json);
  Map<String , dynamic >toJson()=> _$LoginPageDataToJson(this);
}