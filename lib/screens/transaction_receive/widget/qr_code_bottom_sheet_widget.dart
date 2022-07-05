import 'package:crypto_wallet_app/core/extension.dart';
import 'package:flutter/material.dart';

qrCodeBottomSheet(BuildContext context) {
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
        return const QRCodeBottomSheetWidget();
      });
}

class QRCodeBottomSheetWidget extends StatelessWidget {
  const QRCodeBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          SizedBox(
            height: mq.height * 0.05,
          ),
          const Text(
            "QR Code",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ).toGradient(),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: mq.height * 0.3,
            width: mq.width * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/QR code.png",
                ),
              ),
            ),
          ),
          SizedBox(
            height: mq.height * 0.015,
          ),
          const Text(
            "Payment Request QR Code",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
