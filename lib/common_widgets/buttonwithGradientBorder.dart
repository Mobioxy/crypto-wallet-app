import 'package:flutter/material.dart';

Widget buttonwithGradientBorder({
  required Size mq,
  required Function() function,
  required String title,
}) {
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
    padding: const EdgeInsets.all(1.5),
    child: GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.purple,
          ),
        ),
      ),
    ),
  );
}
