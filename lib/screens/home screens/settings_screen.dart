import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/settings_page_container.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/preferences.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/avatar.jpg',
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SettingsPageContainer(
              text: 'Preferences',
              icon: Icons.settings_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(PreferencesScreen.id);
              },
            ),
            SettingsPageContainer(
              text: 'Browser',
              icon: Icons.play_circle_filled_outlined,
              onTap: () {},
            ),
            SettingsPageContainer(
              text: 'Share My Public Address',
              icon: Icons.share,
              onTap: () {},
            ),
            SettingsPageContainer(
              text: 'View on Etherscan',
              icon: Icons.remove_red_eye_outlined,
              onTap: () {},
            ),
            SettingsPageContainer(
              text: 'Help',
              icon: Icons.help_outline_outlined,
              onTap: () {},
            ),
            SettingsPageContainer(
              text: 'Logout',
              icon: Icons.logout,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget container() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: lightIconBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.settings).toGradient(),
              ),
              const SizedBox(width: 20),
              const Text(
                'Preferences',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 1),
      ],
    );
  }
}
