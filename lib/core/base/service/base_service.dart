import 'package:celebi_app/core/init/network/core_dio_interface.dart';
import 'package:celebi_app/core/init/network/network_manager.dart';
import 'package:celebi_app/core/locators.dart';
import 'package:logger/logger.dart';

import '../../logger.dart';

class BaseService {
  Logger? log = getLogger('BaseService');
  ICoreDio? coreDio = NetworkManager.instance!.coreDio;
}
