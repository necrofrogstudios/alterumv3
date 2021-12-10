import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'package:testing/settings/theme_setup.dart';
import 'package:testing/popular_widgets/splash.dart';

Future main() async {
  await ThemeManager.initialise();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      themes: getThemes,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        home: new Splash(),
      ),
    );
  }
}

final GetIt locator = GetIt.instance;

void setupLocator() {}
