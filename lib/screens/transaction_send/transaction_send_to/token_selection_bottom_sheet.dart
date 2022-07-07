import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

tokenSelectionBottomSheet(BuildContext context, Size mq) {
  return showModalBottomSheet(
      context: context,
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
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mq.height * 0.025,
              ),
              Center(
                child: const Text(
                  "Token",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ).toGradient(),
              ),
              SizedBox(
                height: mq.height * 0.035,
              ),
              const Expanded(child: TokenList())
            ],
          ),
        );
      });
}

class TokenList extends StatefulWidget {
  const TokenList({Key? key}) : super(key: key);

  @override
  State<TokenList> createState() => _TokenListState();
}

class _TokenListState extends State<TokenList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return ListView.separated(
      separatorBuilder: (context, i) {
        return Container(height: mq.height * 0.01);
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            height: mq.height * 0.1,
            decoration: BoxDecoration(
                gradient: selectedIndex == index
                    ? const LinearGradient(
                        colors: [
                          Color.fromRGBO(190, 40, 246, 1),
                          Color.fromRGBO(105, 20, 245, 1),
                          Color.fromRGBO(18, 34, 244, 1)
                        ],
                      )
                    : LinearGradient(
                        colors: [
                          Colors.grey[300]!,
                          Colors.grey[200]!,
                        ],
                      ),
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(2),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[900]
                    : Colors.white,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    index == 0 ? "Binance Coin" : "USD Coin",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        index == 0 ? "4,789 BNB" : "487 USD",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        r"$ 242135",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
