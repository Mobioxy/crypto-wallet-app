import 'package:flutter/material.dart';

class TokenItemWidget extends StatelessWidget {
  final String leadingImage;
  final String title;
  final String subTitle;
  final String subTitle2;
  final String trailingTitle;
  const TokenItemWidget({
    Key? key,
    required this.leadingImage,
    required this.subTitle,
    required this.subTitle2,
    required this.title,
    required this.trailingTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          leadingImage,
        ),
      ),
      title: Text(
        title,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            subTitle2,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.green,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      trailing: Text(
        trailingTitle,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
