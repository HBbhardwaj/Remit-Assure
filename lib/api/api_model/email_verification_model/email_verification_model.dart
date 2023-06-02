
import 'package:json_annotation/json_annotation.dart';
part 'email_verification_model.g.dart';

@JsonSerializable()
class EmailVerification{
  String? code, message;

  EmailVerification({this.code, this.message});

  factory EmailVerification.fromJson(Map<String, dynamic> json) => _$EmailVerificationFromJson(json);
  Map<String, dynamic> toJson() => _$EmailVerificationToJson(this);
}