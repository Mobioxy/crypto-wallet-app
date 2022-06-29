import 'package:flutter/material.dart';

Widget gradientButton(Size mq, String title, Function() function) {
  return Container(
    height: mq.height * 0.057,
    width: mq.width * 0.95,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
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
      onTap: function,
      child: Text(
        title,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
      ),
    ),
  );
}
