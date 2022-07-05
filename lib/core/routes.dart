import 'package:crypto_wallet_app/main.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/login_screen.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/signup_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/home_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/swap_confirmation_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/scanQRcodeWidget.dart';
import 'package:crypto_wallet_app/screens/import_token/import_token_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/preferences.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/about_metacoin_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/advanced_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/contacts_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/experimental_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/general_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/networks_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/secutiry_privacy_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/amount_send_preview_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to_screen.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/purchaseMethodPage.dart';
import 'package:crypto_wallet_app/screens/transaction_receive/amount_input_request_payment.dart';
import 'package:crypto_wallet_app/screens/transaction_receive/transaction_receive_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_receive/transaction_receive_send_link.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/amount_input_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/transaction_send_to_accounts_screen.dart';

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
      case TransactionSendToAccountsScreen.id:
        return MaterialPageRoute(
          builder: (_) => const TransactionSendToAccountsScreen(),
        );
      case AmountInputScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AmountInputScreen(),
        );
      case AmountSendPreviewScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AmountSendPreviewScreen(),
        );
      // home page - transaction receive
      case TransactionReceiveScreen.id:
        return MaterialPageRoute(
          builder: (_) => const TransactionReceiveScreen(),
        );
      // home page - import token
      case ImportTokenScreen.id:
        return MaterialPageRoute(
          builder: (_) => const ImportTokenScreen(),
        );
      case SwapConfirmationScreen.id:
        return MaterialPageRoute(
          builder: (_) => const SwapConfirmationScreen(),
        );
      case PreferencesScreen.id:
        return MaterialPageRoute(
          builder: (_) => const PreferencesScreen(),
        );
      case AboutMetacoinScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AboutMetacoinScreen(),
        );
      case AdvancedScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AdvancedScreen(),
        );
      case ContactsScreen.id:
        return MaterialPageRoute(
          builder: (_) => const ContactsScreen(),
        );
      case ExperimentalScreen.id:
        return MaterialPageRoute(
          builder: (_) => const ExperimentalScreen(),
        );
      case GeneralScreen.id:
        return MaterialPageRoute(
          builder: (_) => const GeneralScreen(),
        );
      case NetworksScreen.id:
        return MaterialPageRoute(
          builder: (_) => const NetworksScreen(),
        );
      case SecutiryPrivacyScreen.id:
        return MaterialPageRoute(
          builder: (_) => const SecutiryPrivacyScreen(),
        );
      case AmountInputRequestPaymentScreen.id:
        return MaterialPageRoute(
          builder: (_) => const AmountInputRequestPaymentScreen(),
        );
      case TransactionReceiveSendLinkScreen.id:
        return MaterialPageRoute(
          builder: (_) => const TransactionReceiveSendLinkScreen(),
        );

      default:
        return _errorRoute();
    }
  }
}
