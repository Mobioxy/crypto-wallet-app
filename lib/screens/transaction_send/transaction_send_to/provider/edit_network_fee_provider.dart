import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final editNetworkFeeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => EditNetworkFeeProvider(ref.read),
);

/// Enums
enum EditNetworkFeePageTab {
  basic,
  advanced,
}

/// Provider
class EditNetworkFeeProvider extends ChangeNotifier {
  bool isLoading = true;
  final Reader ref;
  EditNetworkFeePageTab selectedTab = EditNetworkFeePageTab.basic;

  /// Constrcutor
  EditNetworkFeeProvider(this.ref);

  /// Setters
  void changeTab({required EditNetworkFeePageTab n}) {
    selectedTab = n;
    notifyListeners();
  }
}
