import 'package:crypto_wallet_app/common%20widgets/textFieldContainer.dart';
import 'package:crypto_wallet_app/screens/authentication%20screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const id = "/SignupScreen";
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                          "assets/images/block-chain2.png",
                        ),
                      )),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    const Text(
                      "Signup",
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
                  "Email Address*",
                  TextEditingController(),
                  "Enter your email address",
                  false,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                textFieldContainer(
                  size,
                  "Password*",
                  TextEditingController(),
                  "Enter your password",
                  true,
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                textFieldContainer(
                  size,
                  "Confirm Password*",
                  TextEditingController(),
                  "Enter your confirm password",
                  true,
                ),
                SizedBox(
                  height: size.height * 0.045,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Signup",
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
                    text: "Existing user ? ",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                          text: "Login",
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
