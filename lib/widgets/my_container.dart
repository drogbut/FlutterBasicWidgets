
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
        height: MediaQuery.of(context).size.height*4/5,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25.0),
        alignment: Alignment.center,
        decoration: MyBackgroundGradient(colorAccent, colorPrimary, radius: 50.0)
      );

}