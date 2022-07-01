import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
import 'package:crypto_wallet_app/common_widgets/text_field_container.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/screens/import_token/widgets/import_bottom_sheet.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: textFieldContainer(
              mq,
              'Search',
              TextEditingController(),
              'Search',
              false,
              showTitle: false,
              fillColor: lightGreyColor,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientButtonWithBorder(
                title: 'Cancle',
                height: 40,
                width: 140,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              GradientButton(
                title: 'Import',
                height: 40,
                width: 140,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (_) {
                      return const ImportBottomSheet();
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
