import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:flutter/material.dart';

import 'edit_network_basic_network_type_widget.dart';

class BasicNetworkFees extends StatelessWidget {
  const BasicNetworkFees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: mq.height * 0.3,
            child: const BasicNetworkTypeWidget(),
          ),
          SizedBox(
            height: mq.height * 0.03,
          ),
          Text(
            "The network fee covers the cost of proccessing your transaction on the Ethereum Network.",
            style:
                TextStyle(color: Colors.grey[900], fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: mq.height * 0.03,
          ),
          GradientButton(
            title: "Send",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
