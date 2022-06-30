import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final importTokenProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ImportTokenProvider(ref.read),
);

/// Enums
enum ImportTokenPageTabs { search, customToken }

/// Provider
class ImportTokenProvider extends ChangeNotifier {
  bool isLoading = true;
  final Reader ref;
  ImportTokenPageTabs selectedTab = ImportTokenPageTabs.search;

  /// Constrcutor
  ImportTokenProvider(this.ref);

  /// Setters
  void changeTab({required ImportTokenPageTabs n}) {
    selectedTab = n;
    notifyListeners();
  }
}
