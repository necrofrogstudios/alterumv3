import 'package:flutter/material.dart';

class roleplay_request extends StatelessWidget {
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
                  children: <Widget>[
                    Text('Ghost'),
                    Text('Guest'),
                    Text('Staff'),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
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
