import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MyCustomButton extends MaterialButton {

  final ShapeBorder shapeBorder;
  final double width;
  final Alignment alignment;
  final Widget child;
  final Color backgroundButtonColor;

  MyCustomButton( {
    Key key,
    @required VoidCallback onPressed,
    double borderRadius = 5.0,
    BoxDecoration boxDecoration,
    double elevation = 7.5,
    double height,
    this.backgroundButtonColor = Colors.black,
    this.child,
    this.shapeBorder,
    this.width,
    this.alignment,
  }) :super(
    key: key,
    onPressed: onPressed,
  );
  //
  @override
  Widget build(BuildContext context) {
    return  Card(
      color: backgroundButtonColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        width: width,
        child: FlatButton(
          onPressed: onPressed,
          colorBrightness: Brightness.dark,
          splashColor: Colors.deepPurpleAccent,
          highlightColor: Colors.red,
          focusColor: Colors.brown,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          child: child,
        ),
      ),

    );


  }
}


