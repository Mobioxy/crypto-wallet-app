import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsProvider = ChangeNotifierProvider.autoDispose(
  (ref) => SettingsProvider(ref.read),
);

/// Provider
class SettingsProvider extends ChangeNotifier {
  bool isLoading = true;
  final Reader ref;
  final List<String> ipfsGateway = [
    'https://docs.ipfs.io/concepts/ipfs-gateway/',
    'https://docs.ipfs.io/concepts/ipfs-gateway/',
    'https://docs.ipfs.io/concepts/ipfs-gateway/',
    'https://docs.ipfs.io/concepts/ipfs-gateway/',
  ];
  String selectedIpfsGateway = 'https://docs.ipfs.io/concepts/ipfs-gateway/';

  /// Constrcutor
  SettingsProvider(this.ref);

  void changeSelectedIpfsGateway(String n) {
    selectedIpfsGateway = n;
    notifyListeners();
  }
}
