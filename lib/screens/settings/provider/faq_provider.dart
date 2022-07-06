import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final faqProvider = ChangeNotifierProvider.autoDispose(
  (ref) => FAQProvider(ref.read),
);

enum Category {
  general,
  account,
  login,
  wallet,
  tips,
}

/// Provider
class FAQProvider extends ChangeNotifier {
  bool isLoading = true;
  final Reader ref;
  Category category = Category.general;

  /// Constrcutor
  FAQProvider(this.ref);

  void setCategory(Category n) {
    category = n;
    notifyListeners();
  }
}
