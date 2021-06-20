import 'package:json_annotation/json_annotation.dart';

import 'package:celebi_app/core/base/model/base_model.dart';

part 'token.g.dart';

@JsonSerializable()
class Token {
  String? refresh;
  String? access;

  Token({this.refresh, this.access});

  static fromJson(Map<String, dynamic> json) {
    return _$TokenFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$TokenToJson(this);
  }

  String toString() => 'Token(refresh: $refresh, access: $access)';
}
