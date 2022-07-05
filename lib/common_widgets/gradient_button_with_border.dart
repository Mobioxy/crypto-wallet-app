import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class GradientButtonWithBorder extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  const GradientButtonWithBorder({
    Key? key,
    required this.title,
    required this.onTap,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Container(
      height: height ?? mq.height * 0.06,
      width: width ?? mq.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46),
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
      padding: const EdgeInsets.all(1.5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.purple,
            ),
          ).toGradient(),
        ),
      ),
    );
  }
}
