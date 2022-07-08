import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class SettingsPageContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool isLoagout;

  const SettingsPageContainer({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.isLoagout = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color:
                        isLoagout ? Colors.red[100] : lightIconBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: isLoagout
                      ? Icon(
                          icon,
                          color: Colors.red[700],
                        )
                      : Icon(icon).toGradient(),
                ),
                const SizedBox(width: 20),
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
