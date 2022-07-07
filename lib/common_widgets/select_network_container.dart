import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class SelectNetworkContainer extends StatelessWidget {
  final String title;
  final Color color;
  final bool value;

  const SelectNetworkContainer({
    Key? key,
    required this.title,
    required this.color,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 6,
          backgroundColor: color,
        ),
      ),
      title: Text(title),
      trailing: Radio(
        value: value,
        groupValue: true,
        onChanged: (v) {},
      ).toGradient(),
    );
  }
}
