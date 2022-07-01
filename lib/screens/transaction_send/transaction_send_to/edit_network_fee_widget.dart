import 'package:crypto_wallet_app/common_widgets/gradient_text.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/provider/edit_network_fee_provider.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/widgets/edit_network_advanced_widget.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_to/widgets/edit_network_basic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditNetworkFeeWidget extends ConsumerWidget {
  const EditNetworkFeeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.watch(editNetworkFeeProvider);
    var mq = MediaQuery.of(context).size;
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            26,
          ),
          topRight: Radius.circular(
            26,
          ),
        ),
      ),
      child: SizedBox(
        height: mq.height * 0.65,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Edit Network Fee",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ).toGradient(),
            const SizedBox(
              height: 15,
            ),
            const EditNetworkFeeTabSelectionWidget(),
            const SizedBox(
              height: 15,
            ),
            if (provider.selectedTab == EditNetworkFeePageTab.basic)
              const BasicNetworkFees(),
            if (provider.selectedTab == EditNetworkFeePageTab.advanced)
              const AdvancedNetworkFees(),
          ],
        ),
      ),
    );
  }
}

class EditNetworkFeeTabSelectionWidget extends ConsumerWidget {
  const EditNetworkFeeTabSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mq = MediaQuery.of(context).size;
    final _provider = ref.watch(editNetworkFeeProvider);

    return SizedBox(
      height: mq.height * 0.08,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: mq.width / 2.3,
                  alignment: Alignment.center,
                  child: GradientText(
                    text: 'Basic',
                    showGradient:
                        _provider.selectedTab == EditNetworkFeePageTab.basic,
                    onTap: () {
                      _provider.changeTab(
                        n: EditNetworkFeePageTab.basic,
                      );
                    },
                  ),
                ),
                Container(
                  width: mq.width / 2.2,
                  alignment: Alignment.center,
                  child: GradientText(
                    text: 'Advanced',
                    showGradient:
                        _provider.selectedTab == EditNetworkFeePageTab.advanced,
                    onTap: () {
                      _provider.changeTab(n: EditNetworkFeePageTab.advanced);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              fit: StackFit.loose,
              alignment: Alignment.center,
              children: [
                const Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      height: 3,
                      width: mq.width / 2.3,
                      decoration: BoxDecoration(
                        gradient:
                            _provider.selectedTab == EditNetworkFeePageTab.basic
                                ? const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(190, 40, 246, 1),
                                      Color.fromRGBO(105, 20, 245, 1),
                                      Color.fromRGBO(18, 34, 244, 1)
                                    ],
                                  )
                                : const LinearGradient(
                                    colors: [Colors.white, Colors.white],
                                  ),
                      ),
                    ),
                    Container(
                      width: mq.width / 2.2,
                      height: 3,
                      margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: _provider.selectedTab ==
                                EditNetworkFeePageTab.advanced
                            ? const LinearGradient(
                                colors: [
                                  Color.fromRGBO(190, 40, 246, 1),
                                  Color.fromRGBO(105, 20, 245, 1),
                                  Color.fromRGBO(18, 34, 244, 1)
                                ],
                              )
                            : const LinearGradient(
                                colors: [Colors.white, Colors.white],
                              ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
