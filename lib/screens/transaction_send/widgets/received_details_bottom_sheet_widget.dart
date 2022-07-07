// ignore: file_names
import 'package:crypto_wallet_app/common_widgets/gradient_button_with_border.dart';
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
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
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
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  titleValueWidget(
                    "To",
                    "0x....aoyughwpoeubhpoaj",
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
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
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
              SizedBox(
                height: mq.height * 0.025,
              ),
              Container(
                height: mq.height * 0.1,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.grey[800]
                      : Colors.grey[100],
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
              GradientButtonWithBorder(
                title: "View on Mainnet",
                onTap: () {},
              ),
              SizedBox(
                height: mq.height * 0.01,
              ),
            ],
          ),
        );
      });
}
