// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
    refresh: json['refresh'] as String?,
    access: json['access'] as String?,
  );
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
    };
