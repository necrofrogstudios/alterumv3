import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class marquee extends StatelessWidget {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        _buildComplexMarquee(theme),
      ].map(_wrapWithStuff).toList(),
    );
  }
}

Widget _buildComplexMarquee(ThemeData theme) {
  return Marquee(
    text: 'Oh kevin loves the kevin song song '
        'lets gather around the kevin, and sing the kevin song song '
        'the k-e-v-i-n s-o-n-g song song song song song',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: theme.primaryColor,
    ),
    scrollAxis: Axis.horizontal,
    crossAxisAlignment: CrossAxisAlignment.start,
    blankSpace: 170.0,
    velocity: 60.0,
    pauseAfterRound: Duration(seconds: 5),
    showFadingOnlyWhenScrolling: true,
    fadingEdgeStartFraction: 0.1,
    fadingEdgeEndFraction: 0.1,
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
    child: Container(height: 20.0, color: accentColor, child: child),
  );
}
