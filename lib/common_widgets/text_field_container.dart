import 'package:crypto_wallet_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textFieldContainer(
  Size size,
  String title,
  TextEditingController controller,
  String hintText,
  bool obscureText, {
  bool showTitle = true,
  bool isMandatory = false,
  Color fillColor = Colors.transparent,
  double horizontalPadding = 20.0,
  double verticalPadding = 10.0,
  Icon? suffixIcon,
  Icon? prefixIcon,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      if (showTitle)
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (isMandatory)
                  Text(
                    ' *',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold, color: errorText),
                  ),
              ],
            ),
          ),
        ),
      if (showTitle)
        SizedBox(
          height: size.height * 0.01,
        ),
      Container(
        height: size.height * 0.065,
        alignment: Alignment.center,
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor,
            hintText: hintText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            border:
                UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffD3DAE0)),
              borderRadius: BorderRadius.circular(50),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffD3DAE0)),
              borderRadius: BorderRadius.circular(50),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              // borderSide: const BorderSide(color: Color(0xffD3DAE0)),
              borderRadius: BorderRadius.circular(50),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              // borderSide: const BorderSide(color: Color(0xffD3DAE0)),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    ],
  );
}
