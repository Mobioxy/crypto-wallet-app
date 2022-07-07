import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/faq_provider.dart';

class FAQScreen extends ConsumerWidget {
  static const id = "/settings/preference/aboutMetaCoing/FAQScreen";
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(faqProvider);
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BackAppBar(
        context,
        title: "FAQ",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: mq.height * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: mq.width * 0.02,
                      ),
                      provider.category == Category.general
                          ? GradientButton(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "General",
                              onTap: () {})
                          : GradientButtonWithBorder(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "General",
                              onTap: () {
                                provider.setCategory(Category.general);
                              },
                            ),
                      SizedBox(
                        width: mq.width * 0.02,
                      ),
                      provider.category == Category.account
                          ? GradientButton(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Account",
                              onTap: () {})
                          : GradientButtonWithBorder(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Account",
                              onTap: () {
                                provider.setCategory(Category.account);
                              },
                            ),
                      SizedBox(
                        width: mq.width * 0.02,
                      ),
                      provider.category == Category.login
                          ? GradientButton(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Login",
                              onTap: () {})
                          : GradientButtonWithBorder(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Login",
                              onTap: () {
                                provider.setCategory(Category.login);
                              },
                            ),
                      SizedBox(
                        width: mq.width * 0.02,
                      ),
                      provider.category == Category.wallet
                          ? GradientButton(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Wallet",
                              onTap: () {})
                          : GradientButtonWithBorder(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Wallet",
                              onTap: () {
                                provider.setCategory(Category.wallet);
                              },
                            ),
                      SizedBox(
                        width: mq.width * 0.02,
                      ),
                      provider.category == Category.tips
                          ? GradientButton(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Tips",
                              onTap: () {})
                          : GradientButtonWithBorder(
                              height: mq.height * 0.045,
                              width: mq.width * 0.22,
                              title: "Tips",
                              onTap: () {
                                provider.setCategory(Category.tips);
                              },
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.02,
                ),
                Accordion(
                    maxOpenSections: 2,
                    headerBackgroundColorOpened: Colors.black54,
                    openAndCloseAnimation: true,
                    headerPadding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                    sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    sectionClosingHapticFeedback: SectionHapticFeedback.light,
                    children: [
                      accordionSection(
                        header: 'What is Metacoin ?',
                        isOpen: true,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                      accordionSection(
                        header: 'How to use Metacoin ?',
                        isOpen: false,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                      accordionSection(
                        header: 'Is Metacoin is safe for me ?',
                        isOpen: false,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                      accordionSection(
                        header: 'How to send money on metacoin ?',
                        isOpen: false,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                      accordionSection(
                        header: 'How to reset account in Metacoin ?',
                        isOpen: false,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                      accordionSection(
                        header: 'Is there a tips for get a used this app ?',
                        isOpen: false,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                      accordionSection(
                        header: 'Is Metacoin free to use ?',
                        isOpen: false,
                        contentText:
                            'Metacoin is greatest crypto wallet platform in this century',
                        context: context,
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AccordionSection accordionSection({
    required String header,
    required String contentText,
    required bool isOpen,
    required BuildContext context,
  }) {
    return AccordionSection(
      isOpen: isOpen, paddingBetweenClosedSections: 25,
      paddingBetweenOpenSections: 25,
      headerBorderRadius: 0,
      headerBackgroundColorOpened:
          Theme.of(context).brightness == Brightness.dark
              ? Colors.grey[900]
              : Colors.grey[200],
      headerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      contentBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      rightIcon: const Icon(
        Icons.keyboard_arrow_down,
      ).toGradient(),
      header: Text(
        header,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Text(
        contentText,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      contentHorizontalPadding: 20,
      contentBorderWidth: 1,
      // onOpenSection: () => print('onOpenSection ...'),
      // onCloseSection: () => print('onCloseSection ...'),
    );
  }
}
