import 'package:celebi_app/core/init/navigation/navigation_route.dart';
import 'package:celebi_app/core/init/notifier/theme_notifier.dart';
import 'package:celebi_app/views/authantication/login/view/login_view.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/providers.dart';
//
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
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
