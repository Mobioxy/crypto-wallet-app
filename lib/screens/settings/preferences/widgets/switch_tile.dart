import 'package:flutter/material.dart';

class SwitchTileWidget extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;
  const SwitchTileWidget({
    Key? key,
    required this.onChanged,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
