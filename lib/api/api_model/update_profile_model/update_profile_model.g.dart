// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserProfileModel _$UpdateUserProfileModelFromJson(
        Map<String, dynamic> json) =>
    UpdateUserProfileModel(
      code: json['code'] as String?,
      message: json['message'] as String?,
    )..data = json['data'] == null
        ? null
        : UpdateUserProfileData.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateUserProfileModelToJson(
        UpdateUserProfileModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

UpdateUserProfileData _$UpdateUserProfileDataFromJson(
        Map<String, dynamic> json) =>
    UpdateUserProfileData(
      id: json['id'] as String?,
      customer_id: json['customer_id'] as String?,
      email: json['email'] as String?,
      First_name: json['First_name'] as String?,
      Middle_name: json['Middle_name'] as String?,
      Last_name: json['Last_name'] as String?,
      Date_of_birth: json['Date_of_birth'] as String?,
      referral_code: json['referral_code'] as String?,
      referred_by: json['referred_by'] as String?,
      Gender: json['Gender'] as String?,
      Country_of_birth: json['Country_of_birth'] as String?,
      mobile: json['mobile'] as String?,
      location: json['location'] as String?,
      flat: json['flat'] as String?,
      building: json['building'] as String?,
      street: json['street'] as String?,
      postcode: json['postcode'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$UpdateUserProfileDataToJson(
        UpdateUserProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customer_id,
      'email': instance.email,
      'First_name': instance.First_name,
      'Middle_name': instance.Middle_name,
      'Last_name': instance.Last_name,
      'Date_of_birth': instance.Date_of_birth,
      'referral_code': instance.referral_code,
      'referred_by': instance.referred_by,
      'Gender': instance.Gender,
      'Country_of_birth': instance.Country_of_birth,
      'mobile': instance.mobile,
      'location': instance.location,
      'flat': instance.flat,
      'building': instance.building,
      'street': instance.street,
      'postcode': instance.postcode,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
    };
