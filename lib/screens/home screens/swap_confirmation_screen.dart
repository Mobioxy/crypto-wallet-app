import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class SwapConfirmationScreen extends StatelessWidget {
  static const String id = '/swap_confirmation_screen';

  const SwapConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Confirmation'),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: lightBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text('Slippage tolerance'),
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.edit,
                                size: 18,
                              ).toGradient(),
                            ],
                          ),
                          const Text(
                            '2%',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          boldText('Rate'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              boldText('1.379 BNB'),
                              const Text('0.77359 ETH'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          boldText('Inverse Rate'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              boldText('1 BNB'),
                              const Text('0.7734948559 ETH'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          boldText('USD Price'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              boldText('1 BNB'),
                              const Text('\$ 286.38'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text('Estimate Fee'),
                              const SizedBox(width: 10),
                              const Icon(
                                Icons.edit,
                                size: 18,
                              ).toGradient(),
                            ],
                          ),
                          boldText('1.7 BNB'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GradientButton(
            title: 'Swap',
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Text boldText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
