import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import '../../constants/enums/preferences_keys.dart';
import '../../logger.dart';

/**
 * Eğer auth manager gibi bir servis yazılacaksa 
 * Locale managerdan inherit edilir. ve providera bağlanılır.
 * 
 * abstract yapılabilir bence
 */
class LocaleManager {
  static final LocaleManager _instance = LocaleManager._init();
  static Logger _log = getLogger('LocaleManager');
  Box? box;
  static LocaleManager get instance => _instance;

  LocaleManager._init() {}
  static Future preferencesInit() async {
    _log.d('Init Setting box');
    instance.box ??= await Hive.openBox('settings');
  }

  Future<void> clearAll() async {
    await box!.clear();
    _log.d('Clear all data in Settings box.');
  }

  Future<void> setStringValue(PreferencesKeys key, String value) async {
    await box!.put(key.toString(), value);
    _log.d('set string value');
  }

  Future<void> setBoolValue(PreferencesKeys key, bool value) async {
    await box!.put(key.toString(), value);
    _log.d('set bool value');
  }

  String getStringValue(PreferencesKeys key) => box!.get(key.toString()) ?? '';

  bool getBoolValue(PreferencesKeys key) => box!.get(key.toString()) ?? false;
}
