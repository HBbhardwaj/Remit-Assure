// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchnage_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchnageRateModel _$ExchnageRateModelFromJson(Map<String, dynamic> json) =>
    ExchnageRateModel(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ExchnageRateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExchnageRateModelToJson(ExchnageRateModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

ExchnageRateData _$ExchnageRateDataFromJson(Map<String, dynamic> json) =>
    ExchnageRateData(
      amount: json['amount'] as String?,
      rate: json['rate'] as String?,
    );

Map<String, dynamic> _$ExchnageRateDataToJson(ExchnageRateData instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'rate': instance.rate,
    };
