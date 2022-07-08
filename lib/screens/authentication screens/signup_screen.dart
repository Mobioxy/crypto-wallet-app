import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/gradient_button_with_border.dart';

class SignupScreen extends StatelessWidget {
  static const id = '/SignupScreen';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * 0.15,
                      width: size.width * 0.15,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          'assets/images/block-chain2.png',
                        ),
                      )),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    const Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ).toGradient(),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                textFieldContainer(
                  size,
                  'Email Address*',
                  TextEditingController(),
                  'Enter your email address',
                  false,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                textFieldContainer(
                  size,
                  'Password*',
                  TextEditingController(),
                  'Enter your password',
                  true,
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                textFieldContainer(
                  size,
                  'Confirm Password*',
                  TextEditingController(),
                  'Enter your confirm password',
                  true,
                ),
                SizedBox(
                  height: size.height * 0.045,
                ),
                GradientButtonWithBorder(
                    title: "Sign up",
                    height: size.height * 0.06,
                    width: size.width * 0.35,
                    onTap: () {}),
                SizedBox(
                  height: size.height * 0.045,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Existing user ? ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    children: [
                      TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacementNamed(
                                context,
                                LoginScreen.id,
                              );
                            }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
