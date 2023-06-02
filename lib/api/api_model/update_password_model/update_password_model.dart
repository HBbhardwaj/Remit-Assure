import 'package:json_annotation/json_annotation.dart';
 part 'update_password_model.g.dart';

@JsonSerializable()
class UpadtePasswordModel{
   String ?code ;
  String ? message;
  UpadtePasswordModel({
    this.code , this.message
  });
  factory UpadtePasswordModel.fromJson(Map<String ,dynamic>json)=>_$UpadtePasswordModelFromJson(json);
  Map<String , dynamic>toJson()=> _$UpadtePasswordModelToJson(this);
}