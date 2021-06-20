import 'package:vexana/vexana.dart';

import '../model/login_request_model.dart';
import '../model/login_response_model.dart';

abstract class ILoginService {
  final INetworkManager manager;

// bunu inherit alan verecek
  ILoginService(this.manager);

  Future<LoginResponseModel?> fetchUserControl(LoginRequestModel model);
}
