import 'package:flutter/material.dart';

class solo_create_character_input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
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
    );
  }
}

class input_header extends StatelessWidget {
  final List<String> header = [
    'Create Character',
    'Messages'
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    for (int i = 0; i < header.length; i++) {
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
        child: Text(
          header[i],
          style: TextStyle(fontSize: 15, color: theme.primaryColor),
        ),
      );
    }
    return Wrap(
      children: header,
    );
  }
}
