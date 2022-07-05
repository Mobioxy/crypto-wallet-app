import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  static const String id = '/settings/preferences/general';

  const GeneralScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'General'),
    );
  }
}
