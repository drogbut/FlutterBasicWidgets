
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mise_en_page/my_constants.dart';

class MyAppBar extends AppBar {


  MyAppBar(String title, double titleSize,
      {colorAppWidgets: colorIcon,
        double elevation = 4.0,
      Color color}):
      super(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              icon: Icon(Icons.keyboard_backspace, color: colorAppWidgets,),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                title,
                style: TextStyle(fontSize: titleSize, color: colorAppWidgets)
              ),
            ),
          ],
        ),
          backgroundColor: color,
          elevation: elevation,
          iconTheme: IconThemeData(color: colorAppWidgets),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ]
      );



}