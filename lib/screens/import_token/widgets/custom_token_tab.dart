import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class CustomTokenTab extends StatelessWidget {
  const CustomTokenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: textFieldContainer(
                  mq,
                  'Token Address',
                  TextEditingController(),
                  'Token Address',
                  false,
                  showTitle: true,
                  isMandatory: true,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: textFieldContainer(
                  mq,
                  'Token Symbol',
                  TextEditingController(),
                  'Token Symbol',
                  false,
                  showTitle: true,
                  isMandatory: true,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: textFieldContainer(
                  mq,
                  'Token Precision',
                  TextEditingController(),
                  'Token Precision',
                  false,
                  showTitle: true,
                  isMandatory: true,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientButtonWithBorder(
                title: 'Cancle',
                height: 40,
                width: 140,
                onTap: () {},
              ),
              GradientButton(
                title: 'Import',
                height: 40,
                width: 140,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
