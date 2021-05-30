import 'package:celebi_app/core/init/cache/locale_manager.dart';
import 'package:celebi_app/core/init/lang/language_manager.dart';
import 'package:celebi_app/core/init/navigation/navigation_service.dart';
import 'package:celebi_app/core/init/theme/app_theme_light.dart';
import '../core/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

GetIt locator = GetIt.instance;

class LocatorInjector {
  static Logger _log = getLogger('LocatorInjector');

  static Future<void> setupLocator() async {
    _log.d('Initializing Language Manager ');
    locator.registerSingleton<LanguageManager>(LanguageManager());
    _log.d('Initializing Navigation Service ');
    locator.registerSingleton<NavigationService>(NavigationService());
    _log.d('Initializing AppTheme Light ');
    locator.registerLazySingleton<AppThemeLight>(() => AppThemeLight());
  }
}
