import 'package:celebi_app/core/constants/enums/http_request_enum.dart';
import 'package:celebi_app/core/init/network/core_dio_interface.dart';
import 'package:celebi_app/views/_product/enum/network_route_enum.dart';
import 'package:dio/dio.dart';
import 'package:vexana/vexana.dart';

import '../model/login_request_model.dart';
import '../model/login_response_model.dart';
import 'i_login_service.dart';

class LoginService extends ILoginService {
  LoginService(INetworkManager manager, Dio dio, ICoreDio? coreDio)
      : super(manager);

  @override
  Future<LoginResponseModel?> fetchUserControl(LoginRequestModel model) async {
    final response = await manager.send<LoginResponseModel, LoginResponseModel>(
        NetworkRoutes.LOGIN.rawValue,
        parseModel: LoginResponseModel(),
        method: RequestType.POST,
        data: model);

    if (response.data is LoginResponseModel) {
      return response.data;
    } else {
      return null;
    }
  }
}
