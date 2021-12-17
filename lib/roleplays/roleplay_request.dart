import 'package:flutter/material.dart';

class roleplay_request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: theme.backgroundColor,
          title: Text(
            'Themes',
            style: TextStyle(color: theme.primaryColor),
          ),
          content: Text(
            'Pick a Theme',
            style: TextStyle(color: theme.primaryColor),
          ),
          actions: <Widget>[
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 400,
                      child: MultipleThemesView(),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Pick a color'),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  onColorChanged: changeColor,
                                  pickerColor: theme.backgroundColor,
                                ),
                              ),
                            ),
                          ),
                      child: Text('Custom theme'))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: const Text(
          'Themes',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
