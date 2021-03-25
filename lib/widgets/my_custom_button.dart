import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final double elevation;
  final double radius;
  final double width;
  final double height;
  final Widget child;
  final BoxDecoration decoration;
  final ShapeBorder shapeBorder;
  final Alignment alignment;
  //
  MyCustomButton({
    Key key,
    this.elevation = 7.5,
    this.radius = 25.0,
    this.width = 300.0,
    this.height = 50.0,
    this.child,
    this.decoration,
    this.shapeBorder,
    this.alignment,
  }) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        elevation: elevation,
        shape: shapeBorder,
        child: Container(
            alignment: alignment,
            width: width,
            height: height,
            decoration: decoration,
            child: child));
  }
}
