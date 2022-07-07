import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

accountSelectionBottomSheet(
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
                  "Accounts",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ).toGradient(),
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              accountWidget(
                "assets/images/avatar1.png",
                "Account 1",
                "0x..gaoubhaoeoguoieuhge",
                true,
              ),
              accountWidget(
                "assets/images/avatar2.jpg",
                "Account 2",
                "0x..atouohbaweohohohyws",
                false,
              ),
              accountWidget(
                "assets/images/avatar3.png",
                "Account 3",
                "0x..baoluhpwuehiopjweoihi",
                false,
              ),
              SizedBox(
                height: mq.height * 0.01,
              ),
            ],
          ),
        );
      });
}

Widget accountWidget(
  String image,
  String title,
  String subTitle,
  bool value,
) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 1),
    leading: CircleAvatar(
      backgroundImage: AssetImage(image),
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
    subtitle: Text(
      subTitle,
      style: TextStyle(
        color: Colors.grey[600],
        fontWeight: FontWeight.w500,
      ),
    ),
    trailing: Radio(
      value: value,
      groupValue: true,
      onChanged: (v) {},
    ).toGradient(),
  );
}
