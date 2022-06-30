import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/widgets/received_details_bottom_sheet_widget.dart';
import 'package:crypto_wallet_app/screens/transaction_send/widgets/send_details_bottom_sheet_widget.dart';
import 'package:crypto_wallet_app/screens/transaction_send/widgets/transaction_history_widget.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/send_receive_widget.dart';

class TransactionSendScreen extends StatelessWidget {
  static const id = "/transactionSendScreen";
  const TransactionSendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: "BNB",
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mq.height * 0.035,
            ),
            const Text(
              "9.3729 BNB",
              style: TextStyle(
                fontSize: 26,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.w800,
              ),
            ).toGradient(),
            SizedBox(
              height: mq.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "9.3729 ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "+ 0.7%",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mq.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, TransactionSendToScreen.id);
                  },
                  child: sendReceiveWidget(
                    Icons.send_sharp,
                    "Send",
                    mq,
                  ),
                ),
                SizedBox(
                  width: mq.width * 0.03,
                ),
                sendReceiveWidget(
                  Icons.get_app_sharp,
                  "Receive",
                  mq,
                ),
              ],
            ),
            SizedBox(
              height: mq.height * 0.03,
            ),
            const Divider(
              thickness: 1,
            ),
            GestureDetector(
              onTap: () {
                receievedDetailsShowModalBottomSheet(context, mq);
              },
              child: transactionHistoryWidget(
                mq: mq,
                date: "February 25, 2022 at 10:32 AM",
                icon: Icons.download,
                title: "Received BNB",
                status: "Confirmed",
                value: "2,794 BNB",
                amount: r'$ 24987',
                statusColor: Colors.green,
              ),
            ),
            GestureDetector(
              onTap: () {
                sendDetailsShowModalBottomSheet(
                  context,
                  mq,
                );
              },
              child: transactionHistoryWidget(
                mq: mq,
                date: "February 28, 2022 at 10:32 AM",
                icon: Icons.send,
                title: "Sent BNB",
                status: "Confirmed",
                value: "794 BNB",
                amount: r'$ 2487',
                statusColor: Colors.green,
              ),
            ),
            transactionHistoryWidget(
              mq: mq,
              date: "February 29, 2022 at 10:32 AM",
              icon: Icons.download,
              title: "Received BNB",
              status: "Confirmed",
              value: "4,794 BNB",
              amount: r'$ 24987',
              statusColor: Colors.green,
            ),
            transactionHistoryWidget(
              mq: mq,
              date: "February 30, 2022 at 10:32 AM",
              icon: Icons.download,
              title: "Received BNB",
              status: "Canceled",
              value: "797 BNB",
              amount: r'$ 49678',
              statusColor: Colors.red,
            )
          ],
        ),
      )),
    );
  }
}

