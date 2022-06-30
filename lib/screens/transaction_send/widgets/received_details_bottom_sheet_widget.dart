// ignore: file_names
import 'package:crypto_wallet_app/common_widgets/buttonwithGradientBorder.dart';
import 'package:crypto_wallet_app/common_widgets/title_value_column_widget.dart';
import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

receievedDetailsShowModalBottomSheet(
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
                  "Received BNB",
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
                height: mq.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                child: Row(
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
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              buttonwithGradientBorder(
                mq: mq,
                title: "View on Mainnet",
                function: () {},
              ),
              SizedBox(
                height: mq.height * 0.01,
              ),
            ],
          ),
        );
      });
}
