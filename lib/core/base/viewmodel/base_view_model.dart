import 'package:celebi_app/core/init/cache/locale_manager.dart';
import 'package:celebi_app/core/init/navigation/navigation_service.dart';
import 'package:celebi_app/core/locators.dart';

import '../../init/network/core_dio_interface.dart';
import '../../init/network/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../logger.dart';

abstract class BaseViewModel {
  BuildContext? context;
  ICoreDio? coreDio = NetworkManager.instance!.coreDio;
  LocaleManager localeManager = LocaleManager.instance;
  NavigationService navigation = locator<NavigationService>();
  Logger? log;

  bool? _busy;
  bool? _isDisposed = false;
  String? _title;

  bool get busy => this._busy!;

  bool get isDisposed => this._isDisposed!;

  String get title => _title ?? this.runtimeType.toString();

  void setContext(BuildContext context);

  void init();
}
