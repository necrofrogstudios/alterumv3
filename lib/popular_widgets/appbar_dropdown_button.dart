import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class SimpleAccountMenu extends StatefulWidget {
  final List<Widget> icons;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color iconColor;
  final ValueChanged<int> onChange;

  const SimpleAccountMenu({
    Key key,
    this.icons,
    this.borderRadius,
    this.backgroundColor = Colors.black,
    this.iconColor = Colors.black,
    this.onChange,
  })  : assert(icons != null),
        super(key: key);
  @override
  _SimpleAccountMenuState createState() => _SimpleAccountMenuState();
}

class _SimpleAccountMenuState extends State<SimpleAccountMenu> with SingleTickerProviderStateMixin {
  GlobalKey _key;
  bool isMenuOpen = false;
  Offset buttonPosition;
  Size buttonSize;
  OverlayEntry _overlayEntry;
  BorderRadius _borderRadius;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    _borderRadius = widget.borderRadius ?? BorderRadius.circular(4);
    _key = LabeledGlobalKey("button_icon");
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  findButton() {
    RenderBox renderBox = _key.currentContext.findRenderObject();
    buttonSize = renderBox.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void closeMenu() {
    _overlayEntry.remove();
    _animationController.reverse();
    isMenuOpen = !isMenuOpen;
  }

  void openMenu() {
    findButton();
    _animationController.forward();
    _overlayEntry = _overlayEntryBuilder();
    Overlay.of(context).insert(_overlayEntry);
    isMenuOpen = !isMenuOpen;
  }

  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      key: _key,
      decoration: BoxDecoration(
        color: theme.accentColor,
        borderRadius: _borderRadius,
      ),
      child: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        iconSize: 25,
        icon: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: pressed == true
                ? Badge(
                    position: BadgePosition.topEnd(top: 10, end: -7),
                    badgeColor: Colors.red,
                    borderSide: BorderSide(color: Colors.black),
                    badgeContent: null,
                    child: IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                  )
                : Icon(Icons.close)),
        color: theme.primaryColor,
        onPressed: () {
          setState(() {
            pressed = !pressed;
          });
          if (isMenuOpen) {
            closeMenu();
          } else {
            openMenu();
          }
        },
      ),
    );
  }

  OverlayEntry _overlayEntryBuilder() {
    return OverlayEntry(
      builder: (context) {
        var theme = Theme.of(context);
        return Stack(
          children: [
            Positioned.fill(child: GestureDetector(onTap: () {
              setState(() {
                pressed = !pressed;
              });
              closeMenu();
            })),
            Positioned(
              top: buttonPosition.dy + buttonSize.height,
              left: buttonPosition.dx,
              width: buttonSize.width,
              child: Material(
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipPath(
                        clipper: ArrowClipper(),
                        child: Container(
                          width: 17,
                          height: 17,
                          color: theme.accentColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: widget.icons.length * buttonSize.height,
                        decoration: BoxDecoration(
                          color: theme.accentColor,
                          borderRadius: _borderRadius,
                        ),
                        child: Theme(
                          data: ThemeData(
                            iconTheme: IconThemeData(
                              color: theme.primaryColor,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(widget.icons.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  widget.onChange(index);
                                  closeMenu();
                                },
                                child: Container(
                                  width: buttonSize.width,
                                  height: buttonSize.height,
                                  child: widget.icons[index],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
