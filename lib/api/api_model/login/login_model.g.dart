// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginPageModel _$LoginPageModelFromJson(Map<String, dynamic> json) =>
    LoginPageModel(
      code: json['code'] as String?,
      message: json['message'] as String?,
      access_token: json['access_token'] as String?,
      data: json['data'] == null
          ? null
          : LoginPageData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginPageModelToJson(LoginPageModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'access_token': instance.access_token,
      'data': instance.data,
    };

LoginPageData _$LoginPageDataFromJson(Map<String, dynamic> json) =>
    LoginPageData(
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
      digital_id_verified: json['digital_id_verified'] as String?,
    );

Map<String, dynamic> _$LoginPageDataToJson(LoginPageData instance) =>
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
      'digital_id_verified': instance.digital_id_verified,
    };
