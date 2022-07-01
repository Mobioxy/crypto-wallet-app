import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider = ChangeNotifierProvider.autoDispose(
  (ref) => HomeScreenProvider(ref.read),
);

/// Provider
class HomeScreenProvider extends ChangeNotifier {
  bool isLoading = true;
  final Reader ref;

  /// Constrcutor
  HomeScreenProvider(this.ref);
}
