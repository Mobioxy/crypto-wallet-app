import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/signup_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const id = '/loginScreen';
  const LoginScreen({Key? key}) : super(key: key);

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
                  height: size.height * 0.15,
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
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
                  height: size.height * 0.045,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      HomeScreen.id,
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    fixedSize: MaterialStateProperty.all(
                      Size(
                        size.width * 0.35,
                        size.height * 0.06,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.045,
                ),
                RichText(
                  text: TextSpan(
                    text: 'New user ? ',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Signup',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, SignupScreen.id);
                          },
                      ),
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
