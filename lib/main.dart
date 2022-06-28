import 'dart:async';

import 'package:crypto_wallet_app/core/routes.dart';
import 'package:crypto_wallet_app/core/theme.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/login_screen.dart';
import 'package:crypto_wallet_app/screens/import_token/import_token_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Wallet App',
      theme: themeData(context),
      initialRoute: ImportTokenScreen.id,
      onGenerateRoute: AppRouter.router,
    );
  }
}

class SplashPage extends StatefulWidget {
  static const id = '/splashPage';
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigationToScreens();
    super.initState();
  }

  navigationToScreens() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        LoginScreen.id,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Blockchain',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Image.asset(
                  'assets/images/block_chain.png',
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                'Crypto Wallet',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.077,
              ),
              SizedBox(
                height: size.height * 0.15,
                child: Center(
                  child: SizedBox(
                    height: size.height * 0.07,
                    child: const LoadingIndicator(
                      colors: [
                        Colors.purple,
                        Colors.blue,
                        Colors.orange,
                      ],
                      indicatorType: Indicator.ballSpinFadeLoader,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
