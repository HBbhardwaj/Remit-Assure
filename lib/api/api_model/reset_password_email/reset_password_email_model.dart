import 'package:json_annotation/json_annotation.dart';
part 'reset_password_email_model.g.dart';
@JsonSerializable()
class  ResetPasswordEmailModel{
  String? code;
  String? message;
  ResetPasswordEmailData? data;
  ResetPasswordEmailModel({this.code , this.message , this.data});
factory ResetPasswordEmailModel.fromJson(Map<String , dynamic> json)=> _$ResetPasswordEmailModelFromJson(json); 
Map<String , dynamic>toJson ()=> _$ResetPasswordEmailModelToJson(this);
}

@JsonSerializable()
 class ResetPasswordEmailData{
   String ? customer_id;
   ResetPasswordEmailData({this.customer_id});
   factory ResetPasswordEmailData.fromJson(Map<String , dynamic>json)=> _$ResetPasswordEmailDataFromJson(json);
   Map<String , dynamic>toJson()=> _$ResetPasswordEmailDataToJson(this);
 }