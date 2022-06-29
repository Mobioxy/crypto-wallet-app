import 'package:crypto_wallet_app/common_widgets/buttonwithGradientBorder.dart';
import 'package:crypto_wallet_app/common_widgets/title_value_column_widget.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

sendDetailsShowModalBottomSheet(
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
                  "Sent BNB",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ).toGradient(),
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleValueWidget(
                    "Status",
                    "Confirmed",
                    Colors.green,
                  ),
                  titleValueWidget(
                    "Date",
                    "February 30, 2022 at 10:32 AM",
                    Colors.black,
                    isLeft: false,
                  )
                ],
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleValueWidget(
                    "From",
                    "0x....aghoewuoblahhs",
                    Colors.black,
                  ),
                  titleValueWidget(
                    "To",
                    "0x....aoyughwpoeubhpoaj",
                    Colors.black,
                    isLeft: false,
                  )
                ],
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              titleValueWidget(
                "Nonce",
                "#0",
                Colors.black,
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              Container(
                  height: mq.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Amount",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "0.60 BNB",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Network Fee",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "0.09 BNB",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Total Amount",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "2,7896 BNB",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                r"$ 7,7896",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: mq.height * 0.01,
              ),
            ],
          ),
        );
      });
}
