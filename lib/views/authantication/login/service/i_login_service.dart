import 'package:celebi_app/core/base/service/base_service.dart';
import 'package:celebi_app/views/authantication/login/model/login_request_model.dart';
import 'package:celebi_app/views/authantication/login/model/login_response_model.dart';
import 'package:vexana/vexana.dart';

abstract class ILoginService  {
  final INetworkManager manager;
// bunu inherit alan verecek
  ILoginService(this.manager);

  Future<LoginResponseModel?> fethUserControl(LoginRequestModel model);
}
