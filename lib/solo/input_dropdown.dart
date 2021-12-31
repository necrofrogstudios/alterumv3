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
    for (int i = 18; i < 10000; i++) {
      ages.add(i);
    }
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
        child: DropdownButton<int>(
          value: _chosenValue,
          //elevation: 5,
          style: TextStyle(color: Colors.black),

          items: ages.map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text(value.toString()),
            );
          }).toList(),
          hint: Text(
            "Select Age 18+",
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
