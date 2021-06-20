// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return LoginResponseModel(
    email: json['email'] as String?,
    username: json['username'] as String?,
    tokens: json['tokens'] == null
        ? null
        : Token.fromJson(json['tokens'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'tokens': instance.tokens,
    };
