import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
import 'package:flutter/material.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return makeDismissible(
      context: context,
      child: DraggableScrollableSheet(
        maxChildSize: 0.6,
        minChildSize: 0.2,
        builder: (_, controller) {
          return Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey[900]
                  : Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Are you sure you want to log out?',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GradientButtonWithBorder(
                      title: 'Cancel',
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      width: 140,
                      borderRadius: 50,
                      isFromBottomSheet: true,
                    ),
                    GradientButton(
                      title: 'Yes, Logout',
                      onTap: () {},
                      width: 140,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
