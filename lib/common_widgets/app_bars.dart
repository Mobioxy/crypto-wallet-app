import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

class BackAppBar extends PreferredSize {
  BackAppBar(BuildContext context,
      {Key? key, required String title, List<Widget>? actions})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(100),
          child: Container(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.white
                : Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBar(
                  title: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  actions: actions,
                  elevation: 0,
                  leadingWidth: 70,
                  centerTitle: true,
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.light
                          ? Colors.white
                          : Colors.black,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back).toGradient(),
                    color: primaryColor,
                    splashRadius: 25,
                    splashColor: primaryColor.withOpacity(0.1),
                    highlightColor: primaryColor.withOpacity(0.1),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  indent: 12,
                  endIndent: 12,
                  color: lightGreyColor,
                  height: 0,
                  thickness: 1,
                )
              ],
            ),
          ),
        );
}
