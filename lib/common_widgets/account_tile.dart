import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  final String subTitle;
  final String title;
  final IconData icon;

  const AccountTile({
    Key? key,
    required this.onTap,
    required this.image,
    required this.subTitle,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 1),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            size: 16,
          ).toGradient()),
    );
  }
}
