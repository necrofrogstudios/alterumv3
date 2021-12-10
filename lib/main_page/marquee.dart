import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class marquee extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  _buildComplexMarquee(),
                ].map(_wrapWithStuff).toList(),
              ),
  }}
  Widget _buildComplexMarquee() {
  return Marquee(
    text: 'GeeksforGeeks is a one-stop destination for programmers.',
    style: TextStyle(fontWeight: FontWeight.bold),
    scrollAxis: Axis.horizontal,
    crossAxisAlignment: CrossAxisAlignment.start,
    blankSpace: 20.0,
    velocity: 100.0,
    pauseAfterRound: Duration(seconds: 1),
    showFadingOnlyWhenScrolling: true,
    fadingEdgeStartFraction: 0.1,
    fadingEdgeEndFraction: 0.1,
    numberOfRounds: 3,
    startPadding: 10.0,
    accelerationDuration: Duration(seconds: 1),
    accelerationCurve: Curves.linear,
    decelerationDuration: Duration(milliseconds: 500),
    decelerationCurve: Curves.easeOut,
  );
}

// Styling the Marquee
Widget _wrapWithStuff(Widget child) {
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    child: Container(height: 20.0, color: Colors.white, child: child),
  );
}
