//
import 'package:celebi_app/core/init/cache/locale_manager.dart';
import 'package:celebi_app/core/locators.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'core/providers.dart';
import 'views/authantication/login/view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorInjector.setupLocator();
  await LocaleManager.preferencesInit();
  runApp(
    MultiProvider(
      providers: ProviderInjector.instance.providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      home: LoginView(),
    );
  }
}
