import 'package:flutter/material.dart';

class solo_create_character_input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Character Name',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, color: theme.primaryColor),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: TextFormField(
            style: TextStyle(color: theme.primaryColor),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: theme.accentColor, width: 4.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: theme.accentColor, width: 4.0),
              ),
              hintText: 'Type Here',
              hintStyle: TextStyle(
                color: theme.primaryColor.withOpacity(0.45),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            ),
          ),
        ),
      ],
    );
  }
}
