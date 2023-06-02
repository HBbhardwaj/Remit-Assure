// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordEmailModel _$ResetPasswordEmailModelFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordEmailModel(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ResetPasswordEmailData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResetPasswordEmailModelToJson(
        ResetPasswordEmailModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

ResetPasswordEmailData _$ResetPasswordEmailDataFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordEmailData(
      customer_id: json['customer_id'] as String?,
    );

Map<String, dynamic> _$ResetPasswordEmailDataToJson(
        ResetPasswordEmailData instance) =>
    <String, dynamic>{
      'customer_id': instance.customer_id,
    };
