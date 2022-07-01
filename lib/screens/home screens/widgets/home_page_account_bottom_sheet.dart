import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/gradient_button.dart';
import '../../../common_widgets/gradient_button_with_border.dart';
import 'createNewAccountSheet.dart';

accountBottomSheet(BuildContext context) {
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
        return const HomePageAccountWidget();
      });
}

class HomePageAccountWidget extends StatelessWidget {
  const HomePageAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
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
          GradientButtonWithBorder(
            title: "Import an Account",
            onTap: () {},
          ),
          const SizedBox(height: 10),
          GradientButton(
            title: "Create New Account",
            onTap: () {
              createNewAccountSheet(
                context,
                mq,
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
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
      trailing:
          Radio(value: value, groupValue: true, onChanged: (v) {}).toGradient(),
    );
  }
}
