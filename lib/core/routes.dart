import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/login_screen.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/signup_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
          ),
          body: const Center(child: Text("404 NOT FOUND")),
        );
      },
    );
  }

  static Route router(RouteSettings settings) {
    switch (settings.name) {
      case SplashPage.id:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );
      case LoginScreen.id:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case SignupScreen.id:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case HomeScreen.id:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return _errorRoute();
    }
  }
}
