import 'package:flutter/material.dart';

class input_dropdown extends StatefulWidget {
  @override
  input_dropdownState createState() => input_dropdownState();
}

class input_dropdownState extends State<input_dropdown> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: theme.splashColor,
            width: 3.0,
          ),
        ),
        padding: const EdgeInsets.all(0.0),
        child: DropdownButton<String>(
          value: _chosenValue,
          //elevation: 5,
          style: TextStyle(color: Colors.black),

          items: <String>[
            'Android',
            'IOS',
            'Flutter',
            'Node',
            'Java',
            'Python',
            'PHP',
            'Android',
            'IOS',
            'Flutter',
            'Node',
            'Java',
            'Python',
            'PHP',
            'Android',
            'IOS',
            'Flutter',
            'Node',
            'Java',
            'Python',
            'PHP',
            'Android',
            'IOS',
            'Flutter',
            'Node',
            'Java',
            'Python',
            'PHP',
            'Android',
            'IOS',
            'Flutter',
            'Node',
            'Java',
            'Python',
            'PHP',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          hint: Text(
            "Select Age 18+",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          onChanged: (String value) {
            setState(() {
              _chosenValue = value;
            });
          },
        ),
      ),
    );
  }
}
