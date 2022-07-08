import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../locator/locator.dart';
import '../preferences.dart';

final themeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ThemeProvider(ref.read),
);

enum ThemeType { dark, light }

/// Provider
class ThemeProvider extends ChangeNotifier {
  final Preferences prefs = locator<Preferences>();
  final Reader ref;
  ThemeType themeType = ThemeType.light;

  /// Constrcutor
  ThemeProvider(this.ref) {
    getThemeType();
  }

  void getThemeType() async {
    await SharedPreferences.getInstance();
    themeType = prefs.themeMode == null
        ? ThemeType.light
        : prefs.themeMode == "dark"
            ? ThemeType.dark
            : ThemeType.light;

    notifyListeners();
  }

  void setThemeType(String type) async {
    await prefs.setThemeMode(type);
    themeType = prefs.themeMode == "dark" ? ThemeType.dark : ThemeType.light;
    notifyListeners();
  }
}
