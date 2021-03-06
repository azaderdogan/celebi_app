import 'package:celebi_app/core/init/network/vexana_manager.dart';
import 'package:celebi_app/views/_product/_constants/svg_image_path.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../core/logger.dart';
import 'init/lang/language_manager.dart';
import 'init/navigation/navigation_service.dart';
import 'init/theme/app_theme_light.dart';

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
    locator.registerLazySingleton<SVGImagePaths>(() => SVGImagePaths());
    _log.d('Initializin Vexana Manager');
    locator.registerSingleton<VexanaManager>(VexanaManager());
  }
}
