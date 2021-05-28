import 'package:celebi_app/core/init/navigation/navigation_route.dart';
import 'package:celebi_app/core/init/notifier/theme_notifier.dart';
import 'package:celebi_app/views/authantication/login/view/login_view.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/locator.dart';
import 'core/providers.dart';
//
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await LocatorInjector.setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: MaterialApp(
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
        theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
        home: LoginView(),
      ),
    );
  }
}
