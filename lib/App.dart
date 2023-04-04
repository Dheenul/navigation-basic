import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:navigation/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:navigation/Helpers/NavigationHelper/Routes.dart';

// Create a screen named App as stateless widget
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: const Color(0xff0D031B)),
      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          AppRoute(initialPage: Pages.homeScreenConfig, initialPageData: null)
              .onGenerateRoute,
    ));
  }
}
