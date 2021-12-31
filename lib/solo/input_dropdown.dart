import 'package:flutter/material.dart';

class input_dropdown extends StatefulWidget {
  @override
  input_dropdownState createState() => input_dropdownState();
}

class input_dropdownState extends State<input_dropdown> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    List<String> ages = [];
    for (int i = 18; i < 100; i++) {
      ages.add(i.toString());
    }
    var theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: theme.accentColor,
              width: 4.0,
            ),
          ),
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _chosenValue,
              //elevation: 5,
              style: TextStyle(color: Colors.black),

              items: ages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  value: value,
                  child: Text(
                    value.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.primaryColor, fontSize: 15),
                  ),
                );
              }).toList(),
              hint: Text(
                "Select Age 18+",
                textAlign: TextAlign.center,
                style: TextStyle(color: theme.primaryColor.withOpacity(0.45), fontSize: 15),
              ),
              onChanged: (String value) {
                setState(() {
                  print(value);
                  print(_chosenValue);
                  _chosenValue = value;
                  print(_chosenValue);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
