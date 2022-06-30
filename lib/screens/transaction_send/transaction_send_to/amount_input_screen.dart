import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradientButton.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/token_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AmountInputScreen extends StatefulWidget {
  static const id = "/amount_input_screen";
  const AmountInputScreen({Key? key}) : super(key: key);

  @override
  State<AmountInputScreen> createState() => _AmountInputScreenState();
}

class _AmountInputScreenState extends State<AmountInputScreen> {
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
                        color: Colors.white,
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
                color: Colors.grey[200],
              ),
              alignment: Alignment.center,
              child: const Text(
                r"$ 1557",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            Text(
              "Balance : 393 BNB",
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            gradientButton(
              mq,
              "Next",
              () {},
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
