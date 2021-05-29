import 'package:celebi_app/core/init/navigation/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

abstract class BaseViewModel {
  BuildContext? context;

  // ICoreDioNullSafety? coreDio = NetworkManager.instance!.coreDio;

  NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
