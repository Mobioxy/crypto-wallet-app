import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

import 'amount_input_request_payment.dart';

class TransactionReceiveScreen extends StatelessWidget {
  static const id = "/TransactionReceiveScreen";
  const TransactionReceiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: "Receive",
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: mq.height * 0.3,
                    width: mq.width * 0.6,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/QR code.png",
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Scan address to receive payment",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: mq.height * 0.05,
                        width: mq.width * 0.55,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "0x..gawopeuhaehouhjoh",
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Icon(
                                Icons.copy,
                                size: 17,
                              ).toGradient(),
                            ]),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: mq.height * 0.05,
                        width: mq.width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.share_outlined,
                          size: 17,
                        ).toGradient(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: GradientButton(
                title: "Request Payment",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AmountInputRequestPaymentScreen.id,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
