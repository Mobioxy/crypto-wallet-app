import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_text.dart';
import 'package:crypto_wallet_app/screens/import_token/provider/import_token_provider.dart';
import 'package:crypto_wallet_app/screens/import_token/widgets/custom_token_tab.dart';
import 'package:crypto_wallet_app/screens/import_token/widgets/search_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImportTokenScreen extends ConsumerWidget {
  static const String id = '/import_token_screen';

  const ImportTokenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _provider = ref.watch(importTokenProvider);

    return Scaffold(
      appBar: BackAppBar(context, title: 'Import Tokens'),
      body: SafeArea(
        child: Column(
          children: [
            /// Tab Selection
            const TabSelectionWidget(),

            /// Search Tab
            if (_provider.selectedTab == ImportTokenPageTabs.search)
              const SearchTab(),

            /// Custom Token Tab
            if (_provider.selectedTab == ImportTokenPageTabs.customToken)
              const CustomTokenTab(),
          ],
        ),
      ),
    );
  }
}

class TabSelectionWidget extends ConsumerWidget {
  const TabSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _provider = ref.watch(importTokenProvider);

    return SizedBox(
      height: 80,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GradientText(
                  text: 'Search',
                  showGradient:
                      _provider.selectedTab == ImportTokenPageTabs.search,
                  onTap: () {
                    _provider.changeTab(n: ImportTokenPageTabs.search);
                  },
                ),
                GradientText(
                  text: 'Custom Token',
                  showGradient:
                      _provider.selectedTab == ImportTokenPageTabs.customToken,
                  onTap: () {
                    _provider.changeTab(n: ImportTokenPageTabs.customToken);
                  },
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
