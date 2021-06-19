import 'package:celebi_app/core/constants/app/application_constants.dart';

import '../../constants/enums/preferences_keys.dart';
import 'package:dio/dio.dart';
import '../cache/locale_manager.dart';
import 'core_dio.dart';
import 'core_dio_interface.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  ICoreDio? coreDio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: ApplicationConstants.BASE_URL,
      headers: {
        'val': LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
      },
    );
    // _dio = Dio(baseOptions);

    coreDio = CoreDio(baseOptions);

    // _dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options) {
    //     options.path += "veli";
    //   },
    //   onError: (e) {
    //     return BaseError(e.message);
    //   },
    // ));
  }
}
