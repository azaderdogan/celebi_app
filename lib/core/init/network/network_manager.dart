import 'dart:io';

import 'package:celebi_app/core/base/model/base_error.dart';
import 'package:celebi_app/core/base/model/base_model.dart';
import 'package:celebi_app/core/constants/app/app_constants.dart';
import 'package:celebi_app/core/constants/enums/local_keys_enum.dart';
import 'package:celebi_app/core/init/cache/locale_manager.dart';
import 'package:dio/dio.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  NetworkManager._init() {
    final baseOptions = BaseOptions(baseUrl: AppConstants.BASE_URL, headers: {
      'Authorizaiton':
          'Bearer ${LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)}'
    });
/* 
    // Dio base olarak buradan handle edilebilrir.

    _dio = Dio(baseOptions);
    _dio!.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.path += 'request geliyor.';
      },
      onResponse: (e, handler) {
        // response gelince buradan handle edebilirsin.
        return e.data;
      },
      onError: (e, handler) {
        BaseError(e.message);
      },
    ));
  }
  Dio? _dio;

  void dioGet<T extends BaseModel>(String path, T model) async {
    final response = await _dio!.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        if (responseBody is List) {
          return responseBody.map((e) => model.fromJson(e)).toList();
        } else if (responseBody is Map) {
          return model.fromJson(responseBody);
        } else {
          return responseBody;
        }

        break;
      default:
    }
  } */
  }
}
