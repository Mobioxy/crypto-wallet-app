import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class AdvancedNetworkFees extends StatelessWidget {
  const AdvancedNetworkFees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "0.00025487 BNB",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
          SizedBox(
            height: mq.height * 0.04,
          ),
          textFieldContainer(
            mq,
            "Gas Limit*",
            TextEditingController(),
            "Enter a gas limit",
            false,
          ),
          SizedBox(
            height: mq.height * 0.04,
          ),
          textFieldContainer(
            mq,
            "Gas Price: (GWEI)",
            TextEditingController(),
            "Enter a gas price",
            false,
          ),
          SizedBox(
            height: mq.height * 0.04,
          ),
          GradientButton(
            title: "Save",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
