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
      _sharedPreferences?.setString(_themeMode, type);

  String? get themeMode => _sharedPreferences?.getString(_themeMode);
}

const String _themeMode = "themeMode";
