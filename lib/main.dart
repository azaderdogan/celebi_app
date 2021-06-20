//
import 'package:celebi_app/views/authantication/onboard/view/onboard_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/application_constants.dart';
import 'core/init/cache/locale_manager.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'core/locators.dart';
import 'core/providers.dart';

void main() async {
  await _init();

  runApp(
    MultiProvider(
      providers: ProviderInjector.instance.providers,
      child: EasyLocalization(
          child: MyApp(),
          supportedLocales: locator<LanguageManager>().supportedLocales,
          fallbackLocale: locator<LanguageManager>().enLocale,
          path: ApplicationConstants.LANG_ASSET_PATH),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await LocaleManager.preferencesInit();
  await Hive.openBox('settings');
  await LocatorInjector.setupLocator();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: context.watch<ThemeNotifier>().currentTheme,
      home: OnBoardView(),
    );
  }
}
