import 'package:crypto_wallet_app/common_widgets/gradient_text.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/model/token.dart';
import 'package:flutter/material.dart';

class SwapTokenContainer extends StatelessWidget {
  final List<Token> tokenList;
  final Token selectedToken;
  final Function onChangeToken;

  const SwapTokenContainer({
    Key? key,
    required this.tokenList,
    required this.selectedToken,
    required this.onChangeToken,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: lightGreyColor),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (_) {
                  return SelectTokenBottomSheet(
                    tokenList: tokenList,
                    selectedToken: selectedToken,
                    onChangeToken: onChangeToken,
                  );
                },
              );
            },
            child: SizedBox(
              width: 70,
              child: Row(
                children: [
                  Text(selectedToken.symbol),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 20,
            width: 2,
            color: lightGreyColor,
          ),
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                fontSize: 18.0,
                color: primaryColor,
              ),
              controller: TextEditingController(),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 0,
                ),
                hintStyle: TextStyle(fontSize: 18.0, color: primaryColor),
                hintText: '0',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SelectTokenBottomSheet extends StatelessWidget {
  final List<Token> tokenList;
  final Token selectedToken;
  final Function onChangeToken;

  const SelectTokenBottomSheet({
    Key? key,
    required this.tokenList,
    required this.selectedToken,
    required this.onChangeToken,
  }) : super(key: key);

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
            child: Column(
              children: [
                GradientText(text: 'Token', showGradient: true),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: tokenList.length,
                    itemBuilder: (context, index) {
                      return TokenContainer(
                        token: tokenList[index],
                        isSelected: selectedToken.id == tokenList[index].id,
                        onChange: onChangeToken,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TokenContainer extends StatelessWidget {
  final Token token;
  final bool isSelected;
  final Function onChange;

  const TokenContainer({
    Key? key,
    required this.token,
    required this.isSelected,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChange(token);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? primaryColor : lightGreyColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  token.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${token.price} ${token.symbol}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(token.priceInDollor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
