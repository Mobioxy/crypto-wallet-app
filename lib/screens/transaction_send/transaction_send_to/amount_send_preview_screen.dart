import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/account_tile.dart';

class AmountSendPreviewScreen extends StatelessWidget {
  static const id = "/amountSendPreviewScreen";
  const AmountSendPreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: "Send To",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: mq.height * 0.015,
            ),
            const Center(
              child: Text(
                "Amount",
              ),
            ),
            SizedBox(
              height: mq.height * 0.015,
            ),
            const Text(
              "0.6985 BNB",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ).toGradient(),
            SizedBox(
              height: mq.height * 0.02,
            ),
            titleText("From"),
            SizedBox(
              height: mq.height * 0.02,
            ),
            AccountTile(
              image: "assets/images/avatar1.png",
              title: "Account 1",
              subTitle: "Balance : 213 BNB",
              onTap: () {},
              icon: Icons.arrow_forward_ios_outlined,
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            titleText("To"),
            SizedBox(
              height: mq.height * 0.02,
            ),
            AccountTile(
              image: "assets/images/avatar3.png",
              title: "Jerom Bell",
              subTitle: "0x..gaoeuhjaehhywebxlh",
              onTap: () {},
              icon: Icons.cancel_outlined,
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            Container(
                height: mq.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Amount",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "0.0060 BNB",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Network Fee",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                size: 17,
                              ).toGradient(),
                            )
                          ],
                        ),
                        const Text(
                          "0.09 BNB",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total Amount",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "0.0069 BNB",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              r"$ 96",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            const Spacer(),
            GradientButton(title: "Send", onTap: () {}),
            SizedBox(
              height: mq.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Widget titleText(String title, {Color? color = Colors.black}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
