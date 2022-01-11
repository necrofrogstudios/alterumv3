import 'package:flutter/material.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';

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
            DemoToggleButtons(),
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

class DemoToggleButtons extends StatefulWidget {
  @override
  _DemoToggleButtonsState createState() => _DemoToggleButtonsState();
}

class _DemoToggleButtonsState extends State<DemoToggleButtons> {
  List<bool> isSelected = [
    false,
    false,
    true,
  ];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();
  FocusNode focusNodeButton3 = FocusNode();
  List<FocusNode> focusToggle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusToggle = [
      focusNodeButton1,
      focusNodeButton2,
      focusNodeButton3
    ];
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToggleButtons(
              color: theme.primaryColor,
              selectedColor: theme.primaryColor,
              fillColor: theme.accentColor,
              splashColor: theme.accentColor,
              highlightColor: theme.accentColor,
              borderColor: theme.splashColor,
              borderWidth: 3,
              selectedBorderColor: theme.splashColor,
              renderBorder: true,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              disabledColor: Colors.blueGrey,
              disabledBorderColor: Colors.blueGrey,
              focusColor: Colors.red,
              focusNodes: focusToggle,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('First Pov'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Third Pov'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Both Pov'),
                ),
              ],
              isSelected: isSelected,
              onPressed: (int index) {
                setState(() {
                  for (int indexBtn = 0; indexBtn < isSelected.length; indexBtn++) {
                    if (indexBtn == index) {
                      isSelected[indexBtn] = true;
                    } else {
                      isSelected[indexBtn] = false;
                    }
                  }
                });
              },
            ),
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
