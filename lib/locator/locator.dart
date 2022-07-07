import 'package:get_it/get_it.dart';

import '../core/preferences.dart';

GetIt locator = GetIt.instance;

void configLocator() {
  locator.registerLazySingleton(() => Preferences());
}
