import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/transaction_receive/transaction_receive_send_link.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/token_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AmountInputRequestPaymentScreen extends StatefulWidget {
  static const id = "/amount_input_request_payment_screen";
  const AmountInputRequestPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AmountInputRequestPaymentScreen> createState() =>
      _AmountInputRequestPaymentScreenState();
}

class _AmountInputRequestPaymentScreenState
    extends State<AmountInputRequestPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: "Amount",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: mq.height * 0.05,
                width: mq.width * 0.35,
                child: GestureDetector(
                  onTap: () {
                    tokenSelectionBottomSheet(context, mq);
                  },
                  child: Container(
                      height: mq.height * 0.05,
                      width: mq.width * 0.35,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(
                          18,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "BNB",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ).toGradient(),
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_sharp,
                          ).toGradient()
                        ],
                      )).toGradientBorder(18),
                ),
              ),
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            Center(
              child: Container(
                width: mq.width * 0.3,
                alignment: Alignment.center,
                child: const TextField(
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      // border: InputBorder.none,
                      hintText: "Enter Amount",
                      hintStyle: TextStyle(
                        fontSize: 15,
                      )),
                ).toGradient(),
              ),
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            Container(
              height: mq.height * 0.05,
              width: mq.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[900]
                    : Colors.grey[200],
              ),
              alignment: Alignment.center,
              child: const Text(
                r"$ 1557",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            const Spacer(),
            GradientButton(
              title: "Next",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  TransactionReceiveSendLinkScreen.id,
                );
              },
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
