import 'package:flutter/material.dart';

class SwapTokenPage extends StatelessWidget {
  const SwapTokenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Swap tokens',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
