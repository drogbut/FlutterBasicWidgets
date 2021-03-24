import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mise_en_page/my_constants.dart';
import 'package:mise_en_page/widgets/my_widgets.dart';
import 'second_page.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {

  SecondPage secondPage;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      /// Inkwell allows the keyboard to disappear when typing away from the keyboard
      child: InkWell(
        onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyContainer(
                  context,
                  [
                    /*MyCustomText("My standard Text",
                      textScaleFactor: 1.2,
                      fontSize: 24.0,
                      color: colorIcon,
                      fontWeight: FontWeight.bold,
                    ),
                    MyCustomText("My underline Text",
                      color: colorIcon,
                      decoration: TextDecoration.underline,
                      fontSize: 24.0,
                      textDecorationStyle: TextDecorationStyle.wavy,
                    ),*/
                    MyTextInputField(
                      leadingIcon: Icons.person,
                      actionIcon1: Icons.add,
                      actionIcon2: Icons.add_a_photo,
                      hint: 'chat',
                      inputType: TextInputType.text,
                      inputAction: TextInputAction.next,
                    ),
                    MyTextInputField(
                      leadingIcon: Icons.mail,
                      hint: 'email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    MyTextInputField(
                      leadingIcon: Icons.lock,
                      hint: 'password',
                      inputAction: TextInputAction.done,
                      obscureText: true,
                      maxLines: 1,
                    ),
                    MyTextInputField(
                      hint: 'comment',
                      inputType: TextInputType.text,
                      inputAction: TextInputAction.done,
                      maxLines: 10,
                      containerHeight: 200.0,
                    ),
                  ]
              ),
              /*MyContainer(
                  context,
                  [
                    MyContainerButton(
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextButton(
                          onPressed: (){},
                          child: MyCustomText(
                            "My Gradient Button",
                            fontSize: 18.0,
                            color: colorIcon,
                          )
                      ),
                    ),
                    MyContainerButton(
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(25.0),
                              right: Radius.circular(1.0)
                          )
                      ),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(25.0),
                                right: Radius.circular(1.0)
                            )
                        ),
                        colorBrightness: Brightness.dark,
                        color: colorPrimary,
                        splashColor: Colors.deepPurpleAccent,
                        highlightColor: Colors.red,
                        onPressed: (){},
                        child: MyCustomText("My Flat Button", color: colorIcon,)
                    ),
                    ),
                    MyContainerButton(
                      child: MaterialButton(
                          elevation: 20.0,
                          minWidth: 250.0,
                          colorBrightness: Brightness.light,
                          splashColor: Colors.red,
                          highlightElevation: 1.0,
                          color: Colors.purple,
                          onPressed: (){},
                          child: MyCustomText("My Material Button", fontSize: 18.0, color: colorIcon,)
                      ),
                    ),
                    MyContainerButton(
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                            //bottom: Radius.circular(1.0)
                        )
                      ),
                      child: OutlineButton(
                        color: Colors.deepPurpleAccent,
                          highlightedBorderColor: Colors.purple,
                          splashColor: Colors.green,
                          onPressed: (){},
                          borderSide: BorderSide(
                              width: 5.0,
                              color: Colors.deepPurpleAccent
                          ),
                          child: MyCustomText("My Outline Button",
                            fontSize: 18.0,
                          color: colorIcon,),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0),
                                bottom: Radius.circular(1.0)
                            )
                        ),
                      ),
                    ),
                    MyContainerButton(
                        decoration: BoxDecoration(
                            color:colorPrimary,
                        ),
                      child: IconButton(
                          color: Colors.purple,
                          splashColor: Colors.yellow,
                          // highlightColor: Colors.red,
                          icon: Icon(Icons.build, size: 40.0,),
                          onPressed: (){}
                          )
                    ),
                    MyContainerButton(
                     alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          color:colorPrimary,
                        ),
                        child: FloatingActionButton(
                          onPressed: null,
                          child: new Icon(Icons.add),
                          backgroundColor: Colors.purple,
                        ),
                    ),
                  ]
              ),
              MyContainer(
                  context,
                  [
                    MyCustomText("My custom Image", ),
                    MyPaddingWithChild(
                      child: Image(image: logoImage,),
                    ),
                    MyCardWithChild(child: Image.asset("assets/images/image1.jpg",
                      height: 250.0,
                      width: MediaQuery.of(context).size.width/1.5,
                      fit: BoxFit.cover,)),
                    ]
              ),
              
              new RaisedButton(
                  color: Colors.teal,
                  child: new Text(
                    "Show the snackbar",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: snack),
              new RaisedButton(
                  color: Colors.teal,
                  child: new Text(
                    "Show a alert dialog",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: alert),
              new RaisedButton(
                  color: Colors.teal,
                  child: new Text(
                    "Show a  simple alert",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (() => simpleAlert("Faites votre choix", "description"))),
              new RaisedButton(
                  color: Colors.teal,
                  child: new Text(
                    "Show the next page",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: toNewPage)*/
            ],
          )
      ),
      );
  }


  void pressed() {
    setState(() {
      print("j'ai ete appuye");
    });
  }

  void snack() {
    SnackBar snackbar = new SnackBar(
      duration: new Duration(seconds: 2),
            content: new Text(
                "je suis votre snackbar...",
              textScaleFactor: 2.0,

            )
        );
    Scaffold.of(context).showSnackBar(snackbar);
  }

  Future<void> alert() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ceci est une Alerte', textScaleFactor: 1.5,),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Votre requete est encore en cours", style: TextStyle(color: Colors.black54),),
                Text("Voulez vous vraiment quitter ?", style: TextStyle(color: Colors.black87)),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('ok', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> simpleAlert(String title, String description) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title, textScaleFactor: 1.5,),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context); },
              child: const Text('Departement de Sciences'),
            ),
            SimpleDialogOption(
              onPressed: () { Navigator.pop(context); },
              child: const Text('Departement de lietrature'),
            ),
          ],
        );
      },
    );
  }

  void toNewPage(){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return new SecondPage();
    }));
  }
}
