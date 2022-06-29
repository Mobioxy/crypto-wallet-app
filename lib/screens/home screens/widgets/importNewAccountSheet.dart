import 'package:crypto_wallet_app/common_widgets/gradientButton.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:flutter/material.dart';

Future importNewAccountSheet(
  BuildContext context,
  Size mq,
) async {
  await showModalBottomSheet(
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
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: primaryColor,
                        size: 15,
                      ),
                    ),
                    Expanded(
                        child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: mq.width * 0.075,
                        ),
                        child: const Text(
                          "Import Account",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.01,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Imported accounts are viewable in your wallet but are not recoverable with your coin seed phrase.\nLearn more about imported accounts here.",
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.025,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                          text: "Paste your private key string",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "*",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: mq.height * 0.1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        child: Text(
                          "MGAOUYBVOALHNWAHOGWYONGOAIUGIOUEIUBAOIUBHOIAUIOBNUEOIUOISIGIOUIGH",
                        ),
                      ),
                      Icon(
                        Icons.visibility_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.025,
                ),
                gradientButton(
                  mq,
                  "Create",
                  () {},
                ),
                SizedBox(
                  height: mq.height * 0.025,
                ),
              ],
            ),
          ),
        );
      });
}
