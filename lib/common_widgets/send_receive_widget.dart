import 'package:flutter/material.dart';

Widget sendReceiveWidget(IconData icon, String title, Size mq) {
  return Container(
    height: mq.height * 0.045,
    width: mq.width * 0.28,
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 18,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
