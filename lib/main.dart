import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
//https://pub.dev/packages/pal//
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
      themes: getThemes(),
      
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        home: RefreshConfiguration(
          headerBuilder: () => WaterDropMaterialHeader(), // Configure the default header indicator. If you have the same header indicator for each page, you need to set this
          footerBuilder: () => ClassicFooter(), // Configure default bottom indicator
          headerTriggerDistance: 80.0, // header trigger refresh trigger distance
          // custom spring back animate,the props meaning see the flutter api
          maxOverScrollExtent: 200, //The maximum dragging range of the head. Set this property if a rush out of the view area occurs
          maxUnderScrollExtent: 0, // Maximum dragging range at the bottom
          enableScrollWhenRefreshCompleted: true, //This property is incompatible with PageView and TabBarView. If you need TabBarView to slide left and right, you need to set it to true.
          enableLoadingWhenFailed: true, //In the case of load failure, users can still trigger more loads by gesture pull-up.
          hideFooterWhenNotFull: false, // Disable pull-up to load more functionality when Viewport is less than one screen
          enableBallisticLoad: true, // trigger load more by BallisticScrollActivity
          child: Splash(),
        ),
      ),
    );
  }
}

final GetIt locator = GetIt.instance;

void setupLocator() {}
