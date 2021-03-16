import 'package:flutter/material.dart';

class MyBackgroundImage extends StatelessWidget {
  //---------- attributes ----------------//
  final String imageParth;

  //------------ contructor ---------------//
  const MyBackgroundImage({Key key, @required this.imageParth}) : super(key: key);

  //----------------- ovoride methode -------//
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [Colors.white, Colors.transparent],
      ).createShader(rect),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageParth),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}