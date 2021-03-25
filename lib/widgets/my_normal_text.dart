
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mise_en_page/my_constants.dart';

class MyCustomText extends Text {
  MyCustomText(String data, {
    double textScaleFactor = 1.2,
    double fontSize = 11.0,
    double letterSpacing = 2.0,
    double wordSpacing = 40.0,
    decoration:  TextDecoration.none,
    fontWeight: FontWeight.normal,
    color: colorText,
    textDecorationStyle: TextDecorationStyle.solid,
    textAlign: TextAlign.center,
  }) :super(
        data,
        textScaleFactor: textScaleFactor,
        textAlign: textAlign,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            decoration: decoration,
            decorationStyle: textDecorationStyle
        ),
      );
}