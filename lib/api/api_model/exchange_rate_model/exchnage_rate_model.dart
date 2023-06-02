import 'package:json_annotation/json_annotation.dart';
 part 'exchnage_rate_model.g.dart';
@JsonSerializable()
class ExchnageRateModel{
String ? code;
String ? message;
ExchnageRateData? data;
ExchnageRateModel({ this.code , this.message , this.data});
factory ExchnageRateModel.fromJson(Map<String , dynamic>json)=> _$ExchnageRateModelFromJson(json);
Map<String , dynamic>toJson()=> _$ExchnageRateModelToJson(this);
}

@JsonSerializable()
class ExchnageRateData {
  String ? amount ;
  String ?  rate;
  ExchnageRateData({ this.amount , this.rate});
  factory ExchnageRateData.fromJson(Map<String , dynamic>json)=> _$ExchnageRateDataFromJson(json);
  Map<String , dynamic>toJson()=> _$ExchnageRateDataToJson(this);
}