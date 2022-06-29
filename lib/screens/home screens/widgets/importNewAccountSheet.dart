import 'package:crypto_wallet_app/common_widgets/gradientButton.dart';
import 'package:crypto_wallet_app/core/colors.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/purchaseMethodPage.dart';
import 'package:crypto_wallet_app/screens/home%20screens/widgets/scanQRcodeWidget.dart';
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
                SizedBox(
                  height: mq.height * 0.02,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: mq.height * 0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                ).toGradientBorder(15),
                SizedBox(
                  height: mq.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          ScanQRCodePage.id,
                        );
                      },
                      child: Container(
                        height: mq.height * 0.05,
                        width: mq.width * 0.38,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Scan QR Code",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ).toGradientBorder(18),
                    ),
                    SizedBox(
                      width: mq.width * 0.025,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          PurchaseMethodPage.id,
                        );
                      },
                      child: Container(
                        height: mq.height * 0.06,
                        width: mq.width * 0.38,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(190, 40, 246, 1),
                              Color.fromRGBO(105, 20, 245, 1),
                              Color.fromRGBO(18, 34, 244, 1)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Import",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
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
