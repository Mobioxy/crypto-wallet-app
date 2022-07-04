import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/transaction_receive/widget/qr_code_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';

class TransactionReceiveSendLinkScreen extends StatefulWidget {
  static const id = "/transaction_receive_send_link_screen";
  const TransactionReceiveSendLinkScreen({Key? key}) : super(key: key);

  @override
  State<TransactionReceiveSendLinkScreen> createState() =>
      _TransactionReceiveSendLinkScreenState();
}

class _TransactionReceiveSendLinkScreenState
    extends State<TransactionReceiveSendLinkScreen> {
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
                  Icon(
                    Icons.attach_file,
                    size: mq.height * 0.12,
                  ).toGradient(),
                  SizedBox(
                    height: mq.height * 0.02,
                  ),
                  const Text(
                    "Your request link is already to send!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Send this link to friend, and it will ask them to send 0.00001 ETH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.02,
                  ),
                  const Text(
                    "https://wallet.com",
                    style: TextStyle(
                      color: Colors.indigo,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buttonWithGradientBorder(
                        "Copy Link",
                        Icons.copy,
                        mq,
                        () {},
                      ),
                      SizedBox(
                        width: mq.width * 0.02,
                      ),
                      buttonWithGradientBorder(
                        "QR Code",
                        Icons.qr_code_scanner,
                        mq,
                        () {
                          qrCodeBottomSheet(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: GradientButton(
                title: "Send Link",
                onTap: () {},
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buttonWithGradientBorder(
    String title,
    IconData icon,
    Size mq,
    VoidCallback? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: mq.height * 0.05,
        width: mq.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ).toGradient(),
          const SizedBox(
            width: 8,
          ),
          Icon(
            icon,
            size: 20,
          ).toGradient(),
        ]),
      ).toGradientBorder(20),
    );
  }
}
