import 'package:celebi_app/core/base/model/base_model.dart';
import 'package:celebi_app/views/_product/model/token.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends INetworkModel<LoginResponseModel> {
  final String? email;
  final String? username;
  final Token? tokens;

  LoginResponseModel({this.email, this.username, this.tokens});

  @override
  fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$LoginResponseModelToJson(this);
  }
}
