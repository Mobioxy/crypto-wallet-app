import 'package:flutter/material.dart';

class SwitchTileWidget extends StatelessWidget {
  final String title;
  final bool value;
  final double horizontalPadding;
  final double verticlePadding;
  final Function(bool) onChanged;

  const SwitchTileWidget({
    Key? key,
    required this.onChanged,
    required this.title,
    required this.value,
    this.horizontalPadding = 0,
    this.verticlePadding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticlePadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
