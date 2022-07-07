import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/dropdown_widget.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/switch_tile.dart';
import 'package:flutter/material.dart';

class SecutiryPrivacyScreen extends StatelessWidget {
  static const String id = '/settings/preferences/security_privacy';

  const SecutiryPrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(context, title: 'Security & Privacy'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: mq.height * 0.02,
            ),
            const Text(
              "Protect Your Wallet",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: mq.height * 0.045,
                  width: mq.width * 0.4,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(46),
                  ),
                  child: const Text(
                    "Backup Again",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ).toGradient(),
                ).toGradientBorder(50),
                GradientButton(
                  title: "Reveal Phrase",
                  onTap: () {},
                  height: mq.height * 0.05,
                  width: mq.width * 0.4,
                )
              ],
            ),
            SizedBox(
              height: mq.height * 0.015,
            ),
            const Divider(thickness: 1),
            SizedBox(
              height: mq.height * 0.04,
            ),
            const Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            Container(
              alignment: Alignment.center,
              height: mq.height * 0.05,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(46),
              ),
              child: const Text(
                "Change Password",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ).toGradient(),
            ).toGradientBorder(50),
            SizedBox(
              height: mq.height * 0.04,
            ),
            CommonDropDownWidget(
              data: const [
                "After 30 seconds",
              ],
              hintText: "Select a timer",
              title: "Auto Lock",
              onChanged: (t) {},
              selectedValue: null,
            ),
            SizedBox(
              height: mq.height * 0.04,
            ),
            SwitchTileWidget(
              onChanged: (v) {},
              title: "Sign in with Biometrics",
              value: true,
            ),
            SizedBox(
              height: mq.height * 0.025,
            ),
            SwitchTileWidget(
              onChanged: (v) {},
              title: "Privacy Mode",
              value: true,
            ),
            SizedBox(
              height: mq.height * 0.025,
            ),
            SwitchTileWidget(
              onChanged: (v) {},
              title: "Get Incoming Transactions",
              value: true,
            ),
          ],
        ),
      )),
    );
  }
}
