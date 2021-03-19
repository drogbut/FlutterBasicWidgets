import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mise_en_page/my_constants.dart';

class MyCardWithChild extends Card {


  MyCardWithChild({
    @required Widget child,
    Color color = colorIcon,
    double elevation = 10.0,
    double left = 10.0,
    double right = 10.0,
    double top = 10.0,
    double bottom = 10.0,
    ShapeBorder shapeBorder,

  }): super(
    child: child,
    color: color,
    elevation: elevation,
    margin: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
    shape: shapeBorder
  );
}