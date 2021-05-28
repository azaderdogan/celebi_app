import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../core/locator.dart';
import 'init/navigation/navigation_service.dart';
import 'init/notifier/theme_notifier.dart';
import 'init/theme/app_theme_light.dart';

class ProviderInjector {
  static List<SingleChildWidget> providers = [
    ..._independentServices,
    ..._dependentServices,
    ..._consumableServices,
  ];

  static List<SingleChildWidget> _independentServices = [
    Provider.value(value: locator<NavigationService>()),
    Provider.value(value: locator<AppThemeLight>()),
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    )
  ];

  static List<SingleChildWidget> _dependentServices = [];

  static List<SingleChildWidget> _consumableServices = [];
}
