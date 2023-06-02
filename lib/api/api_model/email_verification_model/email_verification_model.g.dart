// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailVerification _$EmailVerificationFromJson(Map<String, dynamic> json) =>
    EmailVerification(
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$EmailVerificationToJson(EmailVerification instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
