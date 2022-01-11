import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/roleplays/create_roleplay_toggles.dart';

class create_roleplay extends StatelessWidget {
  final currentScreen = create_roleplay;
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
            Container(color: theme.splashColor, height: 4),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  'Create Roleplay',
                  style: TextStyle(color: theme.primaryColor, fontSize: 25),
                ),
              ),
            ),
            pov_toggle(),
            mature_toggle(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                'Roleplay Name *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            roleplay_name(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                'About *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            about(),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }
}

class roleplay_name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: TextFormField(
          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            hintText: 'Enter Roleplay Name',
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.75),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxLines = 10;
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: TextFormField(
          style: TextStyle(color: theme.primaryColor),
          keyboardType: TextInputType.multiline,
          maxLines: maxLines,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: theme.splashColor, width: 4.0),
            ),
            hintText: 'Enter Text Here...',
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.75),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          ),
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
