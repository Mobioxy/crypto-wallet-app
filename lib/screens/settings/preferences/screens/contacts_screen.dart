import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/contact_tile.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  static const String id = '/settings/preferences/contacts';

  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Contacts'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return const ContactTile(
                  text: 'Dianne Russel',
                  imageUrl: 'https://picsum.photos/200',
                  address: '0xbc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh',
                );
              }),
            ),
          ),
          GradientButton(
            title: 'Add Contact',
            onTap: () {},
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
        ],
      ),
    );
  }
}
