import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/buttonwithGradientBorder.dart';
import 'package:crypto_wallet_app/common_widgets/gradientButton.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/scanQRcodeWidget.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/transaction_send_to_accounts_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/widgets/account_selection_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionSendToScreen extends StatelessWidget {
  static const id = "/transactionSendToScreen";
  const TransactionSendToScreen({Key? key}) : super(key: key);

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
          horizontal: 14.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(
              "From",
            ),
            accountTile(
              "assets/images/avatar.jpg",
              "Account 1",
              "9.154 ETH",
              () {
                accountSelectionBottomSheet(context, mq);
              },
            ),
            titleText(
              "To",
            ),
            SizedBox(
              height: mq.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: textField(
                mq,
                "Address*",
                "Search, public address or ENS",
                TextEditingController(),
                false,
                context,
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: buttonwithGradientBorder(
                mq: mq,
                function: () {},
                title: "Transfer Between My Accounts",
              ),
            ),
            SizedBox(
              height: mq.height * 0.015,
            ),
            const Divider(
              thickness: 1,
            ),
            SizedBox(
              height: mq.height * 0.01,
            ),
            titleText(
              "Recents",
              color: Colors.grey[600],
            ),
            SizedBox(
              height: mq.height * 0.01,
            ),
            Expanded(
                child: ListView(
              children: [
                accountTile("assets/images/avatar1.png", "Jane Cooper",
                    "0x...ggljhaiuyigeo", () {}),
                accountTile("assets/images/avatar2.jpg", "Marvin Mckinney",
                    "0x...agewaghewyhah", () {}),
                accountTile("assets/images/avatar3.png", "Jerom Bell",
                    "0x...hayahghaegahe", () {}),
              ],
            )),
            gradientButton(mq, "Next", () {
              Navigator.pushNamed(
                context,
                TransactionSendToAccountsScreen.id,
              );
            }),
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

  Widget accountTile(
      String image, String title, String subTitle, Function() function) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 1),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: IconButton(
          onPressed: function,
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
            size: 16,
          ).toGradient()),
    );
  }

  Widget textField(
    Size size,
    String title,
    String hintText,
    TextEditingController controller,
    bool obscureText,
    BuildContext context,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                title,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        SizedBox(
          height: size.height * 0.015,
        ),
        Container(
            height: size.height * 0.065,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    obscureText: obscureText,
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: const TextStyle(fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScanQRCodePage.id);
                  },
                  icon: const Icon(Icons.qr_code_scanner).toGradient(),
                ),
              ],
            )),
      ],
    );
  }
}
