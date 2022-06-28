import 'package:crypto_wallet_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    backgroundColor: Colors.white,
    primaryColor: primaryColor,
    primarySwatch: generateMaterialColor(primaryColor),
    textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
  );
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: color,
    100: color,
    200: color,
    300: color,
    400: color,
    500: color,
    600: color,
    700: color,
    800: color,
    900: color,
  });
}
