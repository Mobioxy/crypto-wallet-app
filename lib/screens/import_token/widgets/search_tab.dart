import 'package:crypto_wallet_app/common_widgets/cta_button.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: textFieldContainer(
              mq,
              'Search',
              TextEditingController(),
              'Search',
              false,
              showTitle: false,
              fillColor: lightGreyColor,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CTAButton(
                text: 'Cancel',
                height: 40,
                width: 140,
              ),
              CTAButton(
                text: 'Import',
                height: 40,
                width: 140,
              ),
            ],
          ),
        ],
      ),
    );
  }
}