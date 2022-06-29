import 'package:flutter/material.dart';

class ScanQRCodePage extends StatelessWidget {
  static const id = "/scanQRCodePage";
  const ScanQRCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: mq.height,
            width: mq.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/background_blur.jpg",
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/QRcode.jpg",
            ),
          ),
        ],
      )),
    );
  }
}
