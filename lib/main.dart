Firebase-import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:get_it/get_it.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'profile/commentSharedPrefs.dart';
import 'package:testing/settings/theme_setup.dart';
import 'package:testing/popular_widgets/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  await ThemeManager.initialise();
  SharedPreferences prefs = await initializeSharedPrefs();
  restoreData(prefs);
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
