import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
import 'package:crypto_wallet_app/common_widgets/select_network_container.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/home%20screens/settings_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/swap_token_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/createNewAccountSheet.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/home_page_account_bottom_sheet.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/network_selection_bottom_sheet.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/token_item_widget.dart';
import 'package:crypto_wallet_app/screens/import_token/import_token_screen.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_screen.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_app/common_widgets/gradient_button.dart';
import 'package:crypto_wallet_app/common_widgets/send_receive_widget.dart';

import '../transaction_receive/transaction_receive_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _widget = [
    const HomePage(),
    const SwapTokenPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _widget.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        currentIndex: selectedIndex,
        onTap: (value) {
          setSelectedIndex(value);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz_rounded),
            label: 'Swap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              accountBottomSheet(context);
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/avatar.jpg',
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: GestureDetector(
            onTap: () {
              networkBottomSheet(
                context,
                mq,
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Ethereum Main',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                )
              ],
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: mq.height * 0.035,
                ),
                const Text(
                  '9.3729 ETH',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.w800,
                  ),
                ).toGradient(),
                SizedBox(
                  height: mq.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      r"$ 9.3729",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '+ 0.7%',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.02,
                ),
                Container(
                  height: mq.height * 0.05,
                  width: mq.width * 0.6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 239, 239),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '0x7aCaaa8238........9eTas',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.copy,
                        color: Colors.purple,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          TransactionSendScreen.id,
                        );
                      },
                      child: sendReceiveWidget(
                        Icons.send_sharp,
                        'Send',
                        mq,
                      ),
                    ),
                    SizedBox(
                      width: mq.width * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          TransactionReceiveScreen.id,
                        );
                      },
                      child: sendReceiveWidget(
                        Icons.get_app_sharp,
                        "Receive",
                        mq,
                      ),
                    ),
                    SizedBox(
                      width: mq.width * 0.03,
                    ),
                    sendReceiveWidget(
                      Icons.shopping_bag,
                      'Buy',
                      mq,
                    )
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                const TokenItemWidget(
                  leadingImage: "assets/images/Binance_Logo.png",
                  title: "Binance Coin",
                  subTitle: "12374971646",
                  subTitle2: "+ 0.15%",
                  trailingTitle: "466 BNB",
                ),
                const Divider(
                  height: 1,
                ),
                const TokenItemWidget(
                  leadingImage: "assets/images/USD_LOGO.png",
                  title: "USD Coin",
                  subTitle: "7944971646",
                  subTitle2: "+ 0.35%",
                  trailingTitle: "46 USDC",
                ),
                const Divider(
                  height: 1,
                ),
                const TokenItemWidget(
                  leadingImage: "assets/images/USD_LOGO.png",
                  title: "USD Coin",
                  subTitle: "7874971646",
                  subTitle2: "+ 0.75%",
                  trailingTitle: "466 AT",
                ),
              ],
            ),
          ),
          GradientButtonWithBorder(
            title: '+ Import Tokens',
            onTap: () {
              Navigator.of(context).pushNamed(ImportTokenScreen.id);
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
