import 'package:flutter/material.dart';

class roleplay_request extends StatefulWidget {
  const roleplay_request();

  @override
  State<roleplay_request> createState() => roleplay_requestState();
}

class roleplay_requestState extends State<roleplay_request> {
  @override
  Widget build(BuildContext context) {
    final List<bool> isSelected;
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
                  children: <Widget>[
                    Icon(Icons.ac_unit),
                    Icon(Icons.call),
                    Icon(Icons.cake),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected[buttonIndex] = true;
                        } else {
                          isSelected[buttonIndex] = false;
                        }
                      }
                    });
                  },
                  isSelected: isSelected,
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
