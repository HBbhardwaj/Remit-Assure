// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupModel _$SignupModelFromJson(Map<String, dynamic> json) => SignupModel(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SignUpData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupModelToJson(SignupModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

SignUpData _$SignUpDataFromJson(Map<String, dynamic> json) => SignUpData(
      id: json['id'] as String?,
      customer_id: json['customer_id'] as String?,
      email: json['email'] as String?,
      First_name: json['First_name'] as String?,
      Middle_name: json['Middle_name'] as String?,
      Last_name: json['Last_name'] as String?,
      Date_of_birth: json['Date_of_birth'] as String?,
      Gender: json['Gender'] as String?,
      Country_of_birth: json['Country_of_birth'] as String?,
      mobile: json['mobile'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$SignUpDataToJson(SignUpData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customer_id,
      'email': instance.email,
      'First_name': instance.First_name,
      'Middle_name': instance.Middle_name,
      'Last_name': instance.Last_name,
      'Date_of_birth': instance.Date_of_birth,
      'Gender': instance.Gender,
      'Country_of_birth': instance.Country_of_birth,
      'mobile': instance.mobile,
      'location': instance.location,
    };
