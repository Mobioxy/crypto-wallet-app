import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final VoidCallback onTap;

  const GradientButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.height,
    this.width,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Container(
      height: height ?? mq.height * 0.06,
      width: width ?? mq.width * 0.95,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(190, 40, 246, 1),
            Color.fromRGBO(105, 20, 245, 1),
            Color.fromRGBO(18, 34, 244, 1)
          ],
        ),
      ),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
