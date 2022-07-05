import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/select_network_container.dart';
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
            children: const [
              SizedBox(height: 10),
              SelectNetworkContainer(
                title: 'Ethereum Main Network',
                value: true,
                color: Colors.green,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Other Networks',
                    style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SelectNetworkContainer(
                title: 'Ropstan Test Network',
                value: false,
                color: Colors.red,
              ),
              SelectNetworkContainer(
                title: 'Kovan Test Network',
                value: false,
                color: Colors.purple,
              ),
              SelectNetworkContainer(
                title: 'Rinkeby Test Network',
                value: false,
                color: Colors.orange,
              ),
              SelectNetworkContainer(
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
