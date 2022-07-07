import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/core/provider/theme_provider.dart';
import 'package:crypto_wallet_app/screens/settings/preferences/widgets/switch_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/dropdown_widget.dart';

// ignore: must_be_immutable
class GeneralScreen extends ConsumerWidget {
  static const String id = '/settings/preferences/general';

  GeneralScreen({
    Key? key,
  }) : super(key: key);

  List<String> currency = ["USD-United States Dollar"];
  List<String> currencyLanguage = ["English"];
  List<String> searchEngine = ["Google"];
  String? selectedCurrency;
  String? selectedCurrencyLanguage;
  String? selectedSearchEngine;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(context, title: 'General'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              CommonDropDownWidget(
                data: currency,
                hintText: "Select a currency",
                onChanged: (s) {},
                selectedValue: null,
                title: "Currency Conversion",
              ),
              SizedBox(
                height: mq.height * 0.02,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Currency Conversion",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: true,
                            groupValue: true,
                            onChanged: (r) {},
                          ).toGradient(),
                          const Text(
                            "Native",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: false,
                            groupValue: true,
                            onChanged: (r) {},
                          ).toGradient(),
                          const Text(
                            "Flat",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * 0.02,
              ),
              CommonDropDownWidget(
                data: currencyLanguage,
                hintText: "Selct a currency language",
                onChanged: (s) {},
                selectedValue: null,
                title: "Currency Language",
              ),
              SizedBox(
                height: mq.height * 0.02,
              ),
              CommonDropDownWidget(
                data: searchEngine,
                hintText: "Select a search engine",
                onChanged: (s) {},
                selectedValue: null,
                title: "Search Engine",
              ),
              SizedBox(
                height: mq.height * 0.02,
              ),
              SwitchTileWidget(
                onChanged: (v) {},
                title: "Hide Token without Balance",
                value: true,
              ),
              SizedBox(
                height: mq.height * 0.02,
              ),
              SwitchTileWidget(
                  onChanged: (v) {
                    if (v == true) {
                      ref.read(themeProvider).setThemeType("dark");
                    } else {
                      ref.read(themeProvider).setThemeType("light");
                    }
                  },
                  title: "Dark Mode",
                  value: ref.watch(themeProvider).themeType == ThemeType.dark
                      ? true
                      : false),
            ],
          ),
        ),
      ),
    );
  }
}
