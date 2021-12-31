import 'package:flutter/material.dart';

class input_dropdown extends StatefulWidget {
  @override
  input_dropdownState createState() => input_dropdownState();
}

class input_dropdownState extends State<input_dropdown> {
  List<int> ages = [];

  int _chosenValue;

  @override
  Widget build(BuildContext context) {
    for (int i = 18; i < 100; i++) {
      ages.add(i);
    }
    var theme = Theme.of(context);
    return Center(
      child: Container(
        constraints: BoxConstraints(minWidth: 300, maxWidth: 900),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: theme.splashColor,
            width: 3.0,
          ),
        ),
        padding: const EdgeInsets.all(0.0),
        child: DropdownButton<int>(
          value: _chosenValue,
          //elevation: 5,
          style: TextStyle(color: Colors.black),

          items: ages.map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text(
                value.toString(),
                textAlign: TextAlign.center,
              ),
            );
          }).toList(),
          hint: Text(
            "Select Age 18+",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          onChanged: (int value) {
            setState(() {
              _chosenValue = value;
            });
          },
        ),
      ),
    );
  }
}
