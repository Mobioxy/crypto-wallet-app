import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/dropdown_widget.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/switch_tile.dart';
import 'package:flutter/material.dart';

class AdvancedScreen extends StatelessWidget {
  static const String id = '/settings/preferences/advanced';

  const AdvancedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Advanced'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reset Account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            GradientButtonWithBorder(
              title: 'Reset Account',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 20),
            CommonDropDownWidget(
              data: const ["https://gateway.pinata.cloud/ipfs-"],
              hintText: "Select a IPFS Gateweay",
              title: "IPFS Gateway",
              onChanged: (i) {},
              selectedValue: null,
            ),
            const SizedBox(height: 20),
            SwitchTileWidget(
              onChanged: (b) {},
              title: "Show Hex Data",
              value: false,
            ),
            const SizedBox(height: 10),
            SwitchTileWidget(
              onChanged: (b) {},
              title: "Customize Transaction Nonce",
              value: false,
            ),
            const SizedBox(height: 20),
            const Text(
              'State Logs',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            GradientButtonWithBorder(
              title: 'Download State Logs',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
