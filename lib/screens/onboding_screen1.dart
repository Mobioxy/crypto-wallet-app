import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/screens/onbording_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnbordPage extends StatelessWidget {
  static const id = '/onboardPage';
  const OnbordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        //child: SingleChildScrollView(
        child: SizedBox(
            height: size.height,
            width: size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.15,
                    ),
                    SizedBox(
                      height: size.height * 0.20,
                      width: size.width * 0.45,
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
                height: size.height * 0.25,
              ),
              const Text(
                '''The best crypto wallet app of this century''',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              GradientButton(
                  title: "Get Started",
                  height: size.height * 0.06,
                  width: size.width * 0.9,
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      OnbordPage1.id,
                    );
                  }),
            ])),
      ),
    );
    //);
  }
}
