import 'package:crypto_wallet_app/core/colors.dart';
import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color textColor;
  final VoidCallback? onTap;

  const CTAButton({
    Key? key,
    required this.text,
    this.onTap,
    this.width = 120,
    this.height = 30.0,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: secondColor,
          border: Border.all(color: secondColor),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
