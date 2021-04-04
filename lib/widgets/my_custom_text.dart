
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {


  final Alignment alignment;
  final double width;
  final double height;
  final String title;
  final double textScaleFactor;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double left, top, bottom, right;
  final double letterSpacing;
  final double wordSpacing;

  final BoxDecoration decoration;
  final ShapeBorder shapeBorder;




  MyCustomText({
    Key key,
    @required this.title,
    this.width,
    this.height,
    this.decoration,
    this.shapeBorder,
    this.alignment = Alignment.topLeft,
    this.textScaleFactor = 1.2,
    this.color = Colors.white, this.fontSize = 16.0,
    this.fontWeight,
    this.left = 5.0, this.top = 0.0, this.bottom = 0.0, this.right = 5.0,
    this.letterSpacing, this.wordSpacing,
  }): super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      width: width,
      height: height,
      decoration: decoration,
      margin: EdgeInsets.only(left: left, bottom: bottom, top: top, right: right),
      child: Text(
        title,
        textScaleFactor: textScaleFactor,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,

        ),

      ),
    );
  }


}



  /*MyCustomText(String data, {
    double textScaleFactor = 1.2,
    double fontSize = 11.0,
    double letterSpacing = 1.2,
    double wordSpacing = 5.0,
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
}*/