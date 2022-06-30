import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/login_screen.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/signup_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/home_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/scanQRcodeWidget.dart';
import 'package:crypto_wallet_app/screens/import_token/import_token_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to_screen.dart';
import 'package:flutter/material.dart';

import '../screens/home screens/widgets/purchaseMethodPage.dart';
import '../screens/transaction_send/transaction_send_screen.dart';

class AppRouter {
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(child: Text('404 NOT FOUND')),
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

      // Authentication
      case LoginScreen.id:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case SignupScreen.id:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      // Home page screens
      case HomeScreen.id:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case ScanQRCodePage.id:
        return MaterialPageRoute(
          builder: (_) => const ScanQRCodePage(),
        );
      case PurchaseMethodPage.id:
        return MaterialPageRoute(
          builder: (_) => const PurchaseMethodPage(),
        );
      // home page - transaction send
      case TransactionSendScreen.id:
        return MaterialPageRoute(
          builder: (_) => const TransactionSendScreen(),
        );
      case TransactionSendToScreen.id:
        return MaterialPageRoute(
          builder: (_) => const TransactionSendToScreen(),
        );
      // home page - import token
      case ImportTokenScreen.id:
        return MaterialPageRoute(
          builder: (_) => const ImportTokenScreen(),
        );

      default:
        return _errorRoute();
    }
  }
}
