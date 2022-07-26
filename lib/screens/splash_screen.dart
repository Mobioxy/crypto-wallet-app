import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'onboding_screen1.dart';

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
        OnbordPage.id,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.19,
                      ),
                      SizedBox(
                        height: size.height * 0.20,
                        width: size.width * 0.40,
                        child: Image.asset(
                          'assets/images/Splash_Screen.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.0002,
                ),
                Text(
                  'Metacoin',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 39, 46, 176)),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                SizedBox(
                  height: size.height * 0.15,
                  child: Center(
                    child: SizedBox(
                      height: size.height * 0.06,
                      child: const LoadingIndicator(
                        colors: [
                          Colors.purple,
                          // Colors.blue,
                          // Colors.orange,
                        ],
                        indicatorType: Indicator.circleStrokeSpin,
                        strokeWidth: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
