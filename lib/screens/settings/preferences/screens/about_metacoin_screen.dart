import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/screens/contact_us_screen.dart';

import 'package:crypto_wallet_app/screens/settings/preferences/widgets/preferences_tile_container.dart';
import 'package:flutter/material.dart';

import 'faq_screen.dart';

class AboutMetacoinScreen extends StatelessWidget {
  static const String id = '/settings/preferences/aboutmetacoin';

  const AboutMetacoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(context, title: 'About Metacoin'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: mq.height * 0.32,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: mq.height * 0.12,
                        width: mq.width * 0.3,
                        child: Image.asset("assets/images/block-chain2.png"),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      "Version 4.31.45",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.copyright_outlined,
                          size: 18,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "2012 - 2022 Metacoin inc.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "License",
                      style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Divider(
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                  child: Column(
                children: [
                  PreferencesTileContainer(
                    text: "Privacy Policy",
                    onTap: () {},
                  ),
                  PreferencesTileContainer(
                    text: "Terms of Use",
                    onTap: () {},
                  ),
                  PreferencesTileContainer(
                    text: "FAQ",
                    onTap: () {
                      Navigator.pushNamed(context, FAQScreen.id);
                    },
                  ),
                  PreferencesTileContainer(
                    text: "Visit Our Website",
                    onTap: () {},
                  ),
                  PreferencesTileContainer(
                    text: "Contact Us",
                    onTap: () {
                      Navigator.pushNamed(context, ContactUsScreen.id);
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
