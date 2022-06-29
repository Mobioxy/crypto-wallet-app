import 'dart:ui';

import 'package:crypto_wallet_app/common_widgets/buttonwithGradientBorder.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/home%20screens/settings_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/swap_token_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/createNewAccountSheet.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/importNewAccountSheet.dart';
import 'package:crypto_wallet_app/screens/transaction_send/transaction_send_screen.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/gradientButton.dart';
import '../../common_widgets/send_receive_widget.dart';

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
              accountBottomSheet(context, mq);
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
                  "Ethereum Main",
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
                  "9.3729 ETH",
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
                    Icon(
                      Icons.currency_exchange,
                      size: 20,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "9.3729 ETH",
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
                      "+ 0.7%",
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
                        "0x7aCaaa8238........9eTas",
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
                        "Send",
                        mq,
                      ),
                    ),
                    SizedBox(
                      width: mq.width * 0.03,
                    ),
                    sendReceiveWidget(
                      Icons.get_app_sharp,
                      "Receive",
                      mq,
                    ),
                    SizedBox(
                      width: mq.width * 0.03,
                    ),
                    sendReceiveWidget(
                      Icons.shopping_bag,
                      "Buy",
                      mq,
                    )
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                tokenItems(
                  "assets/images/Binance_Logo.png",
                  "Binance Coin",
                  "12374971646",
                  "+ 0.15%",
                  "466 BNB",
                ),
                const Divider(
                  height: 1,
                ),
                tokenItems(
                  "assets/images/USD_LOGO.png",
                  "USD Coin",
                  "7944971646",
                  "+ 0.35%",
                  "46 USDC",
                ),
                const Divider(
                  height: 1,
                ),
                tokenItems(
                  "assets/images/avatar.jpg",
                  "Avatar Coin",
                  "7874971646",
                  "+ 0.75%",
                  "466 AT",
                ),
              ],
            ),
          ),
          buttonwithGradientBorder(
              mq: mq, function: () {}, title: "+ Import Tokens"),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  networkBottomSheet(
    BuildContext context,
    Size mq,
  ) {
    showModalBottomSheet(
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
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Networks",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                networkWidget(
                  "Ethereum Main Network",
                  Colors.green,
                  true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Other Networks",
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                networkWidget(
                  "Ropstan Test Network",
                  Colors.red,
                  false,
                ),
                networkWidget(
                  "Kovan Test Network",
                  Colors.purple,
                  false,
                ),
                networkWidget(
                  "Rinkeby Test Network",
                  Colors.orange,
                  false,
                ),
                networkWidget(
                  "Goreli Test Network",
                  Colors.blue,
                  false,
                ),
                buttonwithGradientBorder(
                  mq: mq,
                  function: () {},
                  title: "Close",
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        });
  }

  accountBottomSheet(BuildContext context, Size mq) {
    showModalBottomSheet(
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
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Accounts",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                accountWidget(
                  "Account 1",
                  "9.1574 ETH",
                  "assets/images/avatar.jpg",
                  false,
                ),
                accountWidget(
                  "Account 2",
                  "3.1574 ETH",
                  "assets/images/avatar.jpg",
                  false,
                ),
                accountWidget(
                  "Account 3",
                  "2.1574 ETH",
                  "assets/images/avatar.jpg",
                  false,
                ),
                accountWidget(
                  "Account 4",
                  "4.1574 ETH",
                  "assets/images/avatar.jpg",
                  false,
                ),
                buttonwithGradientBorder(
                  mq: mq,
                  function: () {
                    importNewAccountSheet(
                      context,
                      mq,
                    );
                  },
                  title: "Import an Account",
                ),
                const SizedBox(
                  height: 10,
                ),
                gradientButton(
                  mq,
                  "Create New Account",
                  () {
                    createNewAccountSheet(
                      context,
                      mq,
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        });
  }

  Widget tokenItems(String leadingImage, String title, String subTitle,
      String subTitle2, String trailingTitle) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          leadingImage,
        ),
      ),
      title: Text(
        title,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            subTitle2,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.green,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      trailing: Text(
        trailingTitle,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget networkWidget(String title, Color color, bool value) {
    return ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: color,
          ),
        ),
        title: Text(title),
        trailing: Radio(value: value, groupValue: true, onChanged: (v) {}));
  }

  Widget accountWidget(
      String title, String subTitle, String image, bool value) {
    return ListTile(
        leading: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        title: Text(title),
        subtitle: Text(
          subTitle,
        ),
        trailing: Radio(value: value, groupValue: true, onChanged: (v) {}));
  }
}
