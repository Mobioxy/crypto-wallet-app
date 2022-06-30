import 'package:crypto_wallet_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textFieldContainer(
  Size size,
  String title,
  TextEditingController controller,
  String hintText,
  bool obscureText,
) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              title,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      SizedBox(
        height: size.height * 0.015,
      ),
      Container(
        height: size.height * 0.065,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
