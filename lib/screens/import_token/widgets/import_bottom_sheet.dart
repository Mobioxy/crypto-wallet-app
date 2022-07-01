import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_text.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImportBottomSheet extends ConsumerWidget {
  const ImportBottomSheet({Key? key}) : super(key: key);

  Widget makeDismissible({
    required Widget child,
    required BuildContext context,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context).size;

    return makeDismissible(
      context: context,
      child: DraggableScrollableSheet(
        maxChildSize: 0.6,
        minChildSize: 0.2,
        builder: (_, controller) {
          return Container(
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: ListView(
              controller: controller,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientText(
                      text: 'Import Tokens',
                      showGradient: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                textFieldContainer(
                  mq,
                  'Address',
                  TextEditingController(),
                  'Address',
                  false,
                  showTitle: true,
                  isMandatory: true,
                ),
                const SizedBox(height: 10),
                textFieldContainer(
                  mq,
                  'ID',
                  TextEditingController(),
                  'ID',
                  false,
                  showTitle: true,
                  isMandatory: true,
                ),
                const SizedBox(height: 20),
                GradientButton(
                  title: 'Import',
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
