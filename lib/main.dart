import 'package:flutter/material.dart';
import 'package:mise_en_page/screens/my_screens.dart';
import 'package:mise_en_page/widgets/my_widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'les Widgets en Flutter',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Basic Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        new MyBackgroundImage(imagePath: "assets/images/image1.jpg",),
        Scaffold(
          backgroundColor: Colors.transparent,
          /*appBar: new MyAppBar(widget.title, 20.0, color: Colors.transparent,),*/
          /*body: new Body(),*/
          /*floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.camera_alt),
            backgroundColor: Colors.purple,
          ),
           floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,*/
        ),
      ],
    );
  }
}
