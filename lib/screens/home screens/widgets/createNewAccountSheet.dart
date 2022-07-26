import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

Future createNewAccountSheet(
  BuildContext context,
  Size mq,
) async {
  await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            26,
          ),
          topRight: Radius.circular(
            26,
          ),
        ),
      ),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: primaryColor,
                        size: 15,
                      ).toGradient(),
                    ),
                    Expanded(
                        child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: mq.width * 0.075,
                        ),
                        child: const Text(
                          "Create an Account",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.01,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/avatar.jpg",
                  ),
                  radius: 35,
                ),
                SizedBox(
                  height: mq.height * 0.025,
                ),
                textFieldContainer(
                  mq,
                  "Account Name*",
                  TextEditingController(),
                  "Enter your name",
                  false,
                ),
                SizedBox(
                  height: mq.height * 0.025,
                ),
                GradientButton(title: 'Create', onTap: () {}),
                SizedBox(height: mq.height * 0.025),
              ],
            ),
          ),
        );
      });
}
