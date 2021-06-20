import 'dart:io';

import 'package:dio/dio.dart';

import '../../constants/app/application_constants.dart';
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
      baseUrl: Platform.isAndroid
          ? ApplicationConstants.androidBaseUrl
          : ApplicationConstants.iosBaseUrl,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );

    coreDio = CoreDio(baseOptions);

  }
}
