import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  // Page Varaibles
  final String text;
  final bool showGradient;
  final VoidCallback? onTap;

  // Widget Variables
  final Paint _gradient = Paint()
    ..shader = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.blue,
        Colors.purple,
      ],
    ).createShader(
      const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    );

  GradientText({
    Key? key,
    this.showGradient = false,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          foreground: showGradient ? _gradient : null,
        ),
      ),
    );
  }
}
