import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_text.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/dummy_data/tokens.dart';
import 'package:crypto_wallet_app/screens/home%20screens/provider/swap_tokens_provider.dart';
import 'package:crypto_wallet_app/screens/home%20screens/swap_confirmation_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/swap_token_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwapTokenPage extends ConsumerWidget {
  const SwapTokenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(swapTokenProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Swap tokens',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'From',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GradientText(
                  text: 'Use Max',
                  showGradient: true,
                ),
              ],
            ),
            const SizedBox(height: 10),
            SwapTokenContainer(
              tokenList: dummyToken,
              selectedToken: provider.selectedFromToken,
              onChangeToken: provider.setFromSelectedToken,
            ),
            const SizedBox(height: 40),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: lightBackgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: const Icon(
                  Icons.swap_vert,
                  color: lightBackgroundColor,
                ).toGradient(),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'To',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SwapTokenContainer(
              tokenList: dummyToken,
              selectedToken: provider.selectedToToken,
              onChangeToken: provider.setFromSelectedToken,
            ),
            const Spacer(),
            GradientButton(
              title: 'Swap',
              onTap: () {
                Navigator.of(context).pushNamed(SwapConfirmationScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
