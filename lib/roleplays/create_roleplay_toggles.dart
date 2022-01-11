import 'package:flutter/material.dart';

class pov_toggle extends StatefulWidget {
  @override
  _pov_toggleState createState() => _pov_toggleState();
}

class _pov_toggleState extends State<pov_toggle> {
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
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
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

class mature_toggle extends StatefulWidget {
  @override
  _mature_toggleState createState() => _mature_toggleState();
}

class _mature_toggleState extends State<mature_toggle> {
  List<bool> isSelected = [
    true,
    false,
  ];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();

  List<FocusNode> focusToggle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusToggle = [
      focusNodeButton1,
      focusNodeButton2,
    ];
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();

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
                  child: Text('Everyone 13+'),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Mature 18+'),
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
