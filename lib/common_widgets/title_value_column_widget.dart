import 'package:flutter/material.dart';

Widget titleValueWidget(
  String title,
  String value,
  Color valueColor, {
  isLeft = true,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment:
        isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
    children: [
      Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          color: valueColor,
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      )
    ],
  );
}