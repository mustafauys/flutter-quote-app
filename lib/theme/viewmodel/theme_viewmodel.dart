import 'package:flutter/cupertino.dart';
import '../base/base_theme.dart';
import '../dark_theme.dart';
import '../enum/theme_enum.dart';
import '../light_theme.dart';

class ThemeViewModel with ChangeNotifier {
  static AppTheme _currentTheme = AppTheme.light;

  static BaseTheme? get theme => _currentTheme == AppTheme.light
      ? LightTheme.instance
      : DarkTheme.instance;

  AppTheme get currentTheme {
    return _currentTheme;
  }

  set currentTheme(AppTheme value) {
    _currentTheme = value;
    //writeDataToPhone();
    notifyListeners();
  }

  /*Future<void> writeDataToPhone() async {
    const secureStorage = FlutterSecureStorage();
    await secureStorage.write(key: 'appTheme', value: currentTheme.toString());
  }

  Future<AppTheme?> readDataToPhone() async {
    const secureStorage = FlutterSecureStorage();
    return (await secureStorage.read(key: 'appTheme'))?.stringToAppTheme;
  }*/
}
