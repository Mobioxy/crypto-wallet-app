import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class PreferencesTileContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PreferencesTileContainer({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                ).toGradient(),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
