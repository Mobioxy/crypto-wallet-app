import 'package:crypto_wallet_app/screens/home%20screens/settings_screen.dart';
import 'package:crypto_wallet_app/screens/home%20screens/swap_token_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/homeScreen";
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
    return SafeArea(
        child: Scaffold(
      body: _widget.elementAt(
        selectedIndex,
      ),
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
    ));
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
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/avatar.jpg',
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: mq.height * 0.05,
              ),
              const Text(
                "9.3729 ETH",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.purple,
                  fontWeight: FontWeight.w800,
                ),
              ),
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
                  color: const Color.fromARGB(255, 231, 231, 231),
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
                      width: 5,
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
                  sendReceiveWidget(
                    Icons.send_sharp,
                    "Send",
                    mq,
                  ),
                  SizedBox(
                    width: mq.width * 0.05,
                  ),
                  sendReceiveWidget(
                    Icons.get_app_sharp,
                    "Receive",
                    mq,
                  ),
                  SizedBox(
                    width: mq.width * 0.05,
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
                "assets/images/block_chain.png",
                "Binance Coin",
                "12374971646",
                "+ 0.15%",
                "466 BNB",
              ),
              const Divider(
                height: 1,
              ),
              tokenItems(
                "assets/images/block-chain2.png",
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
              )
            ],
          ),
        ],
      ),
    );
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

  Widget sendReceiveWidget(IconData icon, String title, Size mq) {
    return Container(
      height: mq.height * 0.05,
      width: mq.width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(190, 40, 246, 1),
            Color.fromRGBO(105, 20, 245, 1),
            Color.fromRGBO(18, 34, 244, 1)
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
