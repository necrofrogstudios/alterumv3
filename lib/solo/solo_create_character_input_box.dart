import 'package:flutter/material.dart';

class solo_create_character_input_box extends StatelessWidget {
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
          hintText: 'Type a Message Here',
          hintStyle: TextStyle(
            color: theme.primaryColor.withOpacity(0.45),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        ),
      ),
    );
  }
}
