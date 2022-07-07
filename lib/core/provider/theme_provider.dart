import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  void getThemeType() {
    themeType = prefs.themeMode == null
        ? ThemeType.light
        : prefs.themeMode == "dark"
            ? ThemeType.dark
            : ThemeType.light;
    notifyListeners();
  }

  void setThemeType(String type) {
    prefs.setThemeMode(type);
    themeType = prefs.themeMode == "dark" ? ThemeType.dark : ThemeType.light;
    notifyListeners();
  }
}
