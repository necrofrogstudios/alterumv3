import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';

class profile extends StatelessWidget {
  final currentScreen = profile;
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: Container(
        child: ListView(
          controller: controller,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            profile_pics_icons(),
            Container(color: theme.splashColor, height: 4),
            NotificationListener<OverscrollNotification>(
              onNotification: (OverscrollNotification value) {
                if (value.overscroll < 0 && controller.offset + value.overscroll <= 0) {
                  if (controller.offset != 0) controller.jumpTo(0);
                  return true;
                }
                if (controller.offset + value.overscroll >= controller.position.maxScrollExtent) {
                  if (controller.offset != controller.position.maxScrollExtent) {
                    controller.jumpTo(controller.position.maxScrollExtent);
                  }
                  return true;
                }
                controller.jumpTo(controller.offset + value.overscroll);
                return true;
              },
              child: profile_tabbar(),
            ),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }
}
/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
class ScrollParent extends StatelessWidget {
  final ScrollController controller;
  final Widget child;

  ScrollParent({this.controller, this.child});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollNotification>(
      onNotification: (OverscrollNotification value) {
        if (value.overscroll < 0 && controller.offset + value.overscroll <= 0) {
          if (controller.offset != 0) controller.jumpTo(0);
          return true;
        }
        if (controller.offset + value.overscroll >= controller.position.maxScrollExtent) {
          if (controller.offset != controller.position.maxScrollExtent) controller.jumpTo(controller.position.maxScrollExtent);
          return true;
        }
        controller.jumpTo(controller.offset + value.overscroll);
        return true;
      },
      child: child,
    );
  }
}