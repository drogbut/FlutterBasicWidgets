
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mise_en_page/my_constants.dart';

class MyCustomText extends Text {


  MyCustomText(String data, {
    double textScaleFactor,
    double fontSize = 20.0,
    fontWeight: FontWeight.normal,
    color: textColor,
    TextDecoration decoration,
    textAlign: TextAlign.center,
  }) :super(
        data,
        textScaleFactor: textScaleFactor,
        textAlign: textAlign,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: 2.0,
            wordSpacing: 40.0,
            decoration: decoration,
            decorationStyle: TextDecorationStyle.wavy
        ),
      );



}