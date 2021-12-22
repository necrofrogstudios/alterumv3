import 'package:flutter/material.dart';

class roleplay_request extends StatefulWidget {
  const roleplay_request();

  @override
  State<roleplay_request> createState() => roleplay_requestState();
}

class roleplay_requestState extends State<roleplay_request> {
  List<bool> isSelected = [
    false,
    true,
    false
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 0),
      child: FlatButton(
        color: theme.accentColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        height: 60.0,
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Application'),
            content: Column(
              children: <Widget>[
                ToggleButtons(
                  color: Colors.greenAccent,
                  selectedColor: Colors.amberAccent,
                  fillColor: Colors.purple,
                  splashColor: Colors.lightBlue,
                  highlightColor: Colors.lightBlue,
                  borderColor: Colors.white,
                  borderWidth: 5,
                  selectedBorderColor: Colors.greenAccent,
                  renderBorder: true,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                  disabledColor: Colors.blueGrey,
                  disabledBorderColor: Colors.blueGrey,
                  focusColor: Colors.red,
                  children: <Widget>[
                    Icon(Icons.format_bold),
                    Icon(Icons.format_italic),
                    Icon(Icons.link),
                  ],
                  isSelected: isSelected,
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'Submit'),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Request Form',
              style: TextStyle(
                fontSize: 30,
                color: theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
