import 'package:flutter/material.dart';

class MyBackgroundImage extends StatelessWidget {

  final String imagePath;

  const MyBackgroundImage({Key key, @required this.imagePath}) : super(key: key);

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
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}