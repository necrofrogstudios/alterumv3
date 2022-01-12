import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/roleplays/create_roleplay_toggles.dart';
import 'package:testing/roleplays/roleplay_main.dart';

// draft status, m checkbox?, friends only, inactivity, tags, post warning pop up? //

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
            mature_toggle(),
            SizedBox(height: 15),
            gender_toggle(),
            SizedBox(height: 15),
            pov_toggle(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                'Roleplay Name *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            roleplay_name(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
              child: Text(
                'Background Image *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            background_image_url(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
              child: Text(
                'About *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            about(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
              child: Text(
                'Rules *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            rules(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
              child: Text(
                'Co-Admins *',
                style: TextStyle(color: theme.primaryColor, fontSize: 15),
              ),
            ),
            admins(),
            post_button(),
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

class background_image_url extends StatelessWidget {
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
            hintText: 'www.tumblr.com/defaultimage',
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

class rules extends StatelessWidget {
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
            hintText: 'Enter Rules Here...',
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

class admins extends StatelessWidget {
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
            hintText: 'Add Admins Here...',
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

class post_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 15, 20, 10),
        child: Align(
          alignment: Alignment.centerRight,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 4.0, color: theme.accentColor),
              elevation: 6,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
              backgroundColor: theme.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              'Create',
              style: TextStyle(fontSize: 15, color: theme.primaryColor),
            ),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: theme.accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
                title: const Text('Head Admin Agreement'),
                content: const Text('All user generated content must abide by the rules. Upon creating this Roleplay, you are now responsible for correcting and reporting any inapporiate behavior such as bullying, harrassment, and inappropriate photos. Failure to do so will cause the roleplay to be terminated with or without warning. Do you accept these terms? '),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('No'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => roleplay_main()),
                    ),
                    child: const Text('Yes'),
                  ),
                ],
              ),
            ),
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
