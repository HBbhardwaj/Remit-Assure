import 'package:json_annotation/json_annotation.dart';
 part 'user_profile_model.g.dart';
@JsonSerializable()
class  UserProfileModel{
  String ?code ;
  String ? message;
  UserProfileData ? data  ;

UserProfileModel({this.code , this.message});
factory UserProfileModel.fromJson(Map<String ,dynamic>json)=>_$UserProfileModelFromJson(json);
Map<String , dynamic>toJson()=>_$UserProfileModelToJson(this);
}

@JsonSerializable()
class UserProfileData{
 String ? id ;
 String ? customer_id ;
 String ? email ;
 String ? First_name ;
 String ? Middle_name ;
 String ? Last_name ;
 String ? Date_of_birth ;
 String ? referral_code ;
 String ? referred_by ;
 String ? Gender ;
 String ? Country_of_birth ;
 String ? mobile ;
 String ? location ;
 String ? flat ;
 String ? building ;
 String ? street ;
 String ? postcode ;
 String ? city ;
 String ? state ;
 String ? country ;

 UserProfileData({ this.id, this.customer_id , this.email, this.First_name, this.Middle_name, this.Last_name,this.Date_of_birth, this.referral_code,this.referred_by, this.Gender, this.Country_of_birth, this.mobile, this.location, this.flat, this.building, this.street, this.postcode, this.city, this.state, this.country});

factory UserProfileData.fromJson(Map<String , dynamic>json)=> _$UserProfileDataFromJson(json);
Map<String , dynamic>toJson() => _$UserProfileDataToJson(this);
}