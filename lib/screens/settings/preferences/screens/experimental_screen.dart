import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:flutter/material.dart';

class ExperimentalScreen extends StatelessWidget {
  static const String id = '/settings/preferences/experimental';

  const ExperimentalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Experimental'),
    );
  }
}
