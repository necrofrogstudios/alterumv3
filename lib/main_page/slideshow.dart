import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ImageSlideshow(
      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 200,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: theme.accentColor,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: theme.backgroundColor,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27.0),
                child: Image.network(
                  'https://nexter.org/wp-content/uploads/2018/10/REAL-American-Haunted-Houses-pic10-e1538380539961.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 100, 3, 0),
              child: FlatButton(
                color: theme.accentColor,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                height: 20.0, // foreground
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bucky\'s Play House',
                      style: TextStyle(
                        fontSize: 10,
                        color: theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27.0),
                child: Image.network(
                  'https://million-wallpapers.com/wallpapers/5/10/17359700775032063254.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(3, 100, 3, 0),
              child: FlatButton(
                color: theme.accentColor,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                height: 20.0, // foreground
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mountain Madness',
                      style: TextStyle(
                        fontSize: 10,
                        color: theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {
        print('Page changed: $value');
      },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 1000,

      isLoop: false,
    );
  }
}
