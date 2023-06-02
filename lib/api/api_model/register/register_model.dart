import 'package:json_annotation/json_annotation.dart';
part 'register_model.g.dart';


@JsonSerializable()
class SignupModel {
  String? code;
  String? message;
  SignUpData? data;

  SignupModel({this.code, this.message, this.data});

  factory SignupModel.fromJson(Map<String, dynamic> json) =>
      _$SignupModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupModelToJson(this);
}


@JsonSerializable()
class SignUpData {
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

  SignUpData(
      {this.id , this.customer_id , this.email ,this.First_name , this.Middle_name , this.Last_name , this.Date_of_birth, this.Gender , this.Country_of_birth , this.mobile, this.location});

  factory SignUpData.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDataToJson(this);
}
