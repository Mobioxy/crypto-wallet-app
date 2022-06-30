import 'package:crypto_wallet_app/common_widgets/account_tile.dart';
import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/amount_input_screen.dart';
import 'package:flutter/material.dart';

class TransactionSendToAccountsScreen extends StatelessWidget {
  static const id = "/transactionAccountScreen";
  const TransactionSendToAccountsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: "Send To",
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const Spacer(),
            GradientButton(
              title: "Next",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AmountInputScreen.id,
                );
              },
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
          ],
        ),
      )),
    );
  }

  Widget titleText(String title, {Color? color = Colors.black}) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}
