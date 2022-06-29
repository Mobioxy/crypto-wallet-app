import 'package:crypto_wallet_app/common_widgets/app_bars.dart';
import 'package:flutter/material.dart';

class ImportTokenScreen extends StatefulWidget {
  static const String id = '/import_token_screen';
  const ImportTokenScreen({Key? key}) : super(key: key);

  @override
  State<ImportTokenScreen> createState() => _ImportTokenScreenState();
}

class _ImportTokenScreenState extends State<ImportTokenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context, title: 'Import Token'),
    );
  }
}
