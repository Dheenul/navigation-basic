// ignore_for_file: constant_identifier_names, unused_import

import 'package:navigation/HomeScreen/HomeScreen.dart';
import 'package:navigation/MainScreen/mainScreen.dart';

import 'NavigationHelper.dart';

enum Routes { HomeScreen, MainScreen }

class Pages {
  Object? data;
  static final PageConfig homeScreenConfig =
      PageConfig(
        route: Routes.HomeScreen, 
        build: (_) => const HomeScreen()
      );
  static final PageConfig mainScreenConfig =
      PageConfig(
        route: Routes.MainScreen, 
        build: (_) =>  MainScreen(data: mainScreenConfig.data,)
      );
}
