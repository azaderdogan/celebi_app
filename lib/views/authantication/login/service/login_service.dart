import 'package:flutter/rendering.dart';
import 'package:vexana/vexana.dart';

import '../../../_product/enum/network_route_enum.dart';
import '../model/login_request_model.dart';
import '../model/login_response_model.dart';
import 'i_login_service.dart';

class LoginService extends ILoginService {
  LoginService(INetworkManager manager) : super(manager);

  @override
  Future<LoginResponseModel?> fethUserControl(LoginRequestModel model) async {
    print(manager);
    final response = await manager.send<LoginResponseModel, LoginResponseModel>(
        NetworkRoutes.LOGIN.rawValue,
        parseModel: LoginResponseModel(),
        method: RequestType.POST,
        data: model);
    print("Response : " + response.data.toString());
    if (response.data is LoginResponseModel) {
      return response.data;
    } else {
      return null;
    }
  }
}
