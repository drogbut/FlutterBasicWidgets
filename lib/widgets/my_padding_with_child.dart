import 'package:flutter/material.dart';

class MyPaddingWithChild extends Padding{


  MyPaddingWithChild({
    @required Widget child,
    double left = 10.0,
    double right = 10.0,
    double top = 10.0,
    double bottom = 10.0,
  }): super(
    padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
    child: child
  );
}