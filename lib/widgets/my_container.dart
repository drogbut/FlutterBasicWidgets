
import 'package:flutter/material.dart';
import 'package:mise_en_page/my_constants.dart';


class MyContainer extends Container {

  MyContainer(
      double containerWidth,
      double containerHeight,
      Widget child,
      {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceEvenly,
        double borderRadius = 48.0
      }) :super(
        child: child,
        height: containerHeight,
        width: containerWidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
              colors: [
                colorPrimary,
                colorAccent,
              ],
            )
        ),
      );

}