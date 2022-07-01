import 'package:crypto_wallet_app/dummy_data/tokens.dart';
import 'package:crypto_wallet_app/model/token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final swapTokenProvider = ChangeNotifierProvider.autoDispose(
  (ref) => SwapTokenProvider(ref.read),
);

/// Provider
class SwapTokenProvider extends ChangeNotifier {
  bool isLoading = true;
  final Reader ref;

  Token selectedFromToken = dummyToken[0];
  Token selectedToToken = dummyToken[1];

  /// Constrcutor
  SwapTokenProvider(this.ref);

  /// Setter
  // From Token Selected
  void setFromSelectedToken(Token n) {
    selectedFromToken = n;
    notifyListeners();
  }

  // To Token Selected
  void setToSelectedToken(Token n) {
    selectedToToken = n;
    notifyListeners();
  }
}
