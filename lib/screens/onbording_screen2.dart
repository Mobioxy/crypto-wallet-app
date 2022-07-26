import 'package:crypto_wallet_app/screens/Import_from_seed_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widgets/gradient_button.dart';
import '../common_widgets/gradient_button_with_border.dart';
import 'home screens/home_screen.dart';

class OnbordPage1 extends StatelessWidget {
  static const id = '/onboardPage1';
  const OnbordPage1({Key? key}) : super(key: key);

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
                      height: size.height * 0.19,
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
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 39, 46, 176)),
                ),
              ),
              SizedBox(
                height: size.height * 0.19,
              ),
              Text('Wallet Setup',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple),
                  )),
              SizedBox(
                height: size.height * 0.07,
              ),
              GradientButtonWithBorder(
                  title: "Import Using Seed Pharse",
                  height: size.height * 0.06,
                  width: size.width * 0.9,
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      ImportFromSeed.id,
                    );
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              GradientButton(
                  title: "Create a New Wallet",
                  height: size.height * 0.06,
                  width: size.width * 0.9,
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      HomeScreen.id,
                    );
                  }),
            ])),
      ),
    );
    //);
  }
}
