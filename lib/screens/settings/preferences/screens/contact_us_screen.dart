import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  static const String id = '/settings/preferences/aboutmetacoin/contactUs';

  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(context, title: 'Contact Us'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Name*",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                height: mq.height * 0.060,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(48),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter a name",
                    border: InputBorder.none,
                  ),
                ),
              ).toGradientBorder(50),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Email*",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                height: mq.height * 0.060,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(48),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter a email",
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.email_outlined,
                    ),
                  ),
                ),
              ).toGradientBorder(50),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Message*",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.topLeft,
                height: mq.height * 0.25,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter a message",
                    border: InputBorder.none,
                  ),
                ),
              ).toGradientBorder(18),
              const Spacer(),
              GradientButton(
                title: "Send to Metacoin",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
