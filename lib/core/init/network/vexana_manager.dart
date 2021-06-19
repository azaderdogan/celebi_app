import 'package:celebi_app/core/constants/app/application_constants.dart';
import 'package:vexana/vexana.dart';

class VexanaManager {
  INetworkManager networkManager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(baseUrl: ApplicationConstants.BASE_URL));
}
