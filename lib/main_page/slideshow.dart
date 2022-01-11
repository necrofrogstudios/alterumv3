import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ImageSlideshow(
        /// Width of the [ImageSlideshow].
        width: double.infinity,

        /// Height of the [ImageSlideshow].
        height: 200,

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: theme.backgroundColor,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: theme.accentColor,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/R.ec0dbf7da8a8654a7ccbb0407d3db752?rik=BYfio6MSbTHbfQ&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2fb%2f1%2f1%2f553630.jpg&ehk=%2fb4VB0cIkh4tLtNie2XaSannfKaXX67NxBuwRQga5EY%3d&risl=&pid=ImgRaw&r=0"), fit: BoxFit.cover),
                  color: theme.backgroundColor,
                  border: Border.all(color: theme.splashColor, width: 3.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 20),
                  child: Container(
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
                            'Abducted',
                            style: TextStyle(
                              fontSize: 12,
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Icon(Icons.star_outline, color: Colors.yellow, size: 40),
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
                  image: DecorationImage(image: NetworkImage("https://nexter.org/wp-content/uploads/2018/10/REAL-American-Haunted-Houses-pic10-e1538380539961.jpg"), fit: BoxFit.cover),
                  color: theme.backgroundColor,
                  border: Border.all(color: theme.splashColor, width: 3.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 20),
                  child: Container(
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
                              fontSize: 12,
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
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://million-wallpapers.com/wallpapers/5/10/17359700775032063254.jpg"), fit: BoxFit.cover),
                  color: theme.backgroundColor,
                  border: Border.all(color: theme.splashColor, width: 3.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 150, 0, 20),
                  child: Container(
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
                              fontSize: 12,
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
        autoPlayInterval: 3000,

        isLoop: true,
      ),
    );
  }
}
