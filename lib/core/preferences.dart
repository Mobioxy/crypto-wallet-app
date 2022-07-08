import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static SharedPreferences? _sharedPreferences;

  Future<void> initialization() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future clearPreferences() async {
    await _sharedPreferences?.clear();
  }

  Future setThemeMode(String type) async =>
      await _sharedPreferences?.setString(themeModeKey, type);

  String? get themeMode => _sharedPreferences?.getString(themeModeKey);
}

const String themeModeKey = "themeMode";
