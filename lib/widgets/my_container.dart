
import 'package:flutter/material.dart';
import 'package:mise_en_page/my_constants.dart';
import 'package:mise_en_page/widgets/my_background_gradient.dart';


class MyContainer extends Container {

  MyContainer(
      BuildContext context,
      List<Widget> child,
      {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceEvenly}) :
        super(
        child: new Column(
          mainAxisAlignment: mainAxisAlignment,
          children: child,
        ),
        height: MediaQuery.of(context).size.height*5/6,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(48.0)),
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

        /*MyBackgroundGradient(colorAccent, colorPrimary, radius: 50.0)*/
      );

}