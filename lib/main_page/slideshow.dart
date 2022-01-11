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
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"), fit: BoxFit.cover),
                color: theme.backgroundColor,
                border: Border.all(color: theme.splashColor, width: 3.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(3, 150, 3, 20),
                child: Container(
                  child: FlatButton(
                    color: theme.accentColor,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    height: 15.0, // foreground
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mountain Madness',
                          style: TextStyle(
                            fontSize: 20,
                            color: theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
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
