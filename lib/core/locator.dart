import 'package:celebi_app/core/init/navigation/navigation_service.dart';
import 'package:celebi_app/core/init/theme/app_theme_light.dart';

import '../core/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

GetIt locator = GetIt.instance;

/// Locator ile singleton model oluşturulur ve modeller providera eklenir.
/// dependency injection metodu ile de bunlar okunur.
class LocatorInjector {
  static Logger _log = getLogger('LocatorInjector');

  // singleton olacak classlar buraya
  static Future<void> setupLocator() async {
    _log.d('Initializing Navigator Service');
    locator.registerLazySingleton(() => NavigationService());
    _log.d('Initializing  Theme Light');
    locator.registerLazySingleton(() => AppThemeLight());
  }
}
