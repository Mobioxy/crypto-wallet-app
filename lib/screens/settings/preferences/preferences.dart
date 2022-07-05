import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/about_metacoin_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/advanced_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/contacts_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/experimental_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/general_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/networks_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/secutiry_privacy_screen.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/preferences_tile_container.dart';
import 'package:flutter/material.dart';

class PreferencesScreen extends StatelessWidget {
  static const String id = '/settings/preferences';

  const PreferencesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Preferences'),
      body: Column(
        children: [
          const SizedBox(height: 20),
          PreferencesTileContainer(
            text: 'General',
            onTap: () {
              Navigator.of(context).pushNamed(GeneralScreen.id);
            },
          ),
          PreferencesTileContainer(
            text: 'Security & Privacy',
            onTap: () {
              Navigator.of(context).pushNamed(SecutiryPrivacyScreen.id);
            },
          ),
          PreferencesTileContainer(
            text: 'Advanced',
            onTap: () {
              Navigator.of(context).pushNamed(AdvancedScreen.id);
            },
          ),
          PreferencesTileContainer(
            text: 'Contacts',
            onTap: () {
              Navigator.of(context).pushNamed(ContactsScreen.id);
            },
          ),
          PreferencesTileContainer(
            text: 'Networks',
            onTap: () {
              Navigator.of(context).pushNamed(NetworksScreen.id);
            },
          ),
          PreferencesTileContainer(
            text: 'Experimental',
            onTap: () {
              Navigator.of(context).pushNamed(ExperimentalScreen.id);
            },
          ),
          PreferencesTileContainer(
            text: 'About Metacoin',
            onTap: () {
              Navigator.of(context).pushNamed(AboutMetacoinScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
