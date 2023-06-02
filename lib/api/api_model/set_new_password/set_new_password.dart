import 'package:json_annotation/json_annotation.dart';
part 'set_new_password.g.dart';
@JsonSerializable ()
class SetNewPasswordModel{
  String ? code ;
  String ? message;
  SetNewPasswordModel({this.code , this.message});
  factory SetNewPasswordModel.fromJson(Map<String , dynamic>json)=> _$SetNewPasswordModelFromJson(json);
  Map<String , dynamic>toJson()=> _$SetNewPasswordModelToJson(this);
}