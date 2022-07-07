import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/select_network_container.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class NetworksScreen extends StatelessWidget {
  static const String id = '/settings/preferences/network';

  const NetworksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Network'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              const SelectNetworkContainer(
                title: 'Ethereum Main Network',
                value: true,
                color: Colors.green,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Other Networks',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ).toGradient(),
                ),
              ),
              const SizedBox(height: 10),
              const SelectNetworkContainer(
                title: 'Ropstan Test Network',
                value: false,
                color: Colors.red,
              ),
              const SelectNetworkContainer(
                title: 'Kovan Test Network',
                value: false,
                color: Colors.purple,
              ),
              const SelectNetworkContainer(
                title: 'Rinkeby Test Network',
                value: false,
                color: Colors.orange,
              ),
              const SelectNetworkContainer(
                title: 'Goreli Test Network',
                value: false,
                color: Colors.blue,
              ),
            ],
          ),
          GradientButton(
            title: 'Add Network',
            onTap: () {},
            margin: const EdgeInsets.only(bottom: 30),
          ),
        ],
      ),
    );
  }
}
