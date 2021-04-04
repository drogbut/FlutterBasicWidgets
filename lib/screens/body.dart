import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mise_en_page/my_constants.dart';
import 'package:mise_en_page/widgets/my_widgets.dart';


class Body extends StatefulWidget {

  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {

  //SecondPage secondPage;
  int count = 4;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return new SingleChildScrollView(
      padding: EdgeInsets.all(25.0),
      /// Inkwell allows the keyboard to disappear when typing away from the keyboard
      child: InkWell(
          onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAlertDialog(
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyCustomButton(onPressed: (){},
                        backgroundButtonColor: alertDialogColor,
                        child: MyCustomText(
                          title: "ANNULER",
                          textScaleFactor: 1.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade300,
                          decoration: BoxDecoration(color: Colors.transparent),
                        )
                    ),
                    MyCustomButton(onPressed: (){},
                        backgroundButtonColor: alertDialogColor,
                        child: MyCustomText(
                          title: "SUPPRIMER",
                          textScaleFactor: 1.1,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade300,
                          decoration: BoxDecoration(color: Colors.transparent),
                        )
                    )
                  ],
                ),
                title: "Supprimer le brouillon ?", titleColor: Colors.white70,
                avatarChild: Text(""),
                descriptionWidget: SizedBox(height: 50,),
                backendContainerColor: alertDialogColor,
              ),
              MyAlertDialog(
                Container(
                    alignment: Alignment.center,
                    child: MyCustomButton(onPressed: (){},
                        backgroundButtonColor: Colors.red.shade300,
                        width: 100,
                        child: MyCustomText(
                          title: "Okay",
                          textScaleFactor: 1.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          decoration: BoxDecoration(color: Colors.transparent),
                        )
                    )
                ),
                title: "Warning !!!", titleColor: Colors.white70,
                avatarPositionTop: 10,
                marginTop: 80,
                avatarChild: CircleAvatar(
                  backgroundColor: Colors.red.shade300,
                  radius: 50.0,
                  child: Icon(Icons.assistant_photo, size: 50,
                      color: Colors.white70),
                ),

                descriptionWidget: Container(
                  height: 100,
                  child: MyCustomText(
                    title: "You can not access this file",
                    alignment: Alignment.center,
                    color: Colors.white70,
                    textScaleFactor: 1.5,
                  ),
                ),
                backendContainerColor: alertDialogColor,
                alignSubmittedWidget: Alignment.center,
              ),
              MyAlertDialog(
                Container(
                  height: 130,
                  decoration: BoxDecoration(color: Colors.red.shade300),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: MyCustomText(title: "You don't have enough balance",
                          color: Colors.white70,
                          alignment: Alignment.center,
                          textScaleFactor: 1.5,
                          decoration: BoxDecoration(color: Colors.red.shade300),),
                      ),
                      MyCustomButton(onPressed: (){},
                        child: MyCustomText(title: "Okay",
                          width: 100,
                          color: Colors.white70,
                          alignment: Alignment.center,
                          textScaleFactor: 1.5,
                        ),
                        backgroundButtonColor: alertDialogColor,


                      )
                    ],
                  ),
                ),
                title: " ",
                avatarPositionTop: -50,
                marginTop: 80,
                marginBottom: 0.0,
                avatarChild: Container(
                  width: 80,
                 height: 80,
                 decoration: BoxDecoration(
                   color: alertDialogColor,
                     borderRadius: BorderRadius.circular(5),
                 ),
                  child: Icon(Icons.camera, size: 80,
                      color: Colors.red.shade300),
                ),
                descriptionWidget: Text(""),
                backendContainerColor: alertDialogColor,
                alignSubmittedWidget: Alignment.center,
              ),
              MyAlertDialog(
                Container(
                  margin: EdgeInsets.only(bottom: 25, top: 25),
                  child: MyCustomButton(onPressed: (){},
                        child: MyCustomText(title: "Okay",
                          width: 100,
                          color: Colors.white70,
                          alignment: Alignment.center,
                          textScaleFactor: 1.5,
                        ),
                        backgroundButtonColor: Colors.red.shade300,
                      )
                ),
                title: "Insert reset email adress",
                titleColor: Colors.white70,
                marginBottom: 0.0,
                descriptionWidget: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 10,),
                      MyTextInputField(hint: "user@gmail.com",
                        borderRadius: 5,
                        leadingIcon: Icons.mail,
                      )
                    ],
                  ),
                ),
                avatarChild: Text(""),
                backendContainerColor: alertDialogColor,
                alignSubmittedWidget: Alignment.center,
              ),
              MyAlertDialog(
                Container(
                    alignment: Alignment.centerRight,
                    child: MyCustomButton(onPressed: (){},
                        backgroundButtonColor: alertDialogColor,
                        width: 150,
                        child: MyCustomText(
                          title: "Confirm",
                          textScaleFactor: 1.3,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(color: alertDialogColor),
                        )
                    )
                ),
                title: "Success", titleColor: Colors.white70,
                avatarPositionTop: 8,
                marginTop: 150,
                avatarChild: Container(
                  width: 350,
                  height: 170,
                  child: ClipOval(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      color: alertDialogColor,
                      child: Container(
                        color: alertDialogColor,
                        child: Icon(Icons.check_box, size: 80,color: Colors.teal,),
                      ),

                    ),
                  ),
                ),
                descriptionWidget: Container(
                  height: 200,
                  child: MyCustomText(
                    title: "You can not access this file You can not access this file"
                        "You can not access this file You can not access this file"
                        "You can not access this file You can not access this file",
                    alignment: Alignment.center,
                    color: Colors.white70,
                    textScaleFactor: 1.2,
                  ),
                ),
                backendContainerColor: alertDialogColor,
                alignSubmittedWidget: Alignment.center,
              ),
/*              MyAlertDialog(
                containerHeight: size,
                containerWidth: size,
                title: "Warning !!!",
                description: "You can not access on this file",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove, color: colorIcon, size: 18.0,),
                    onPressed: (){
                      if(count > 0){
                        onCountChanged(-1);
                      }
                  },),
                  MyCustomText("$count", color: colorIcon, fontSize: 18.0,),
                  IconButton(
                    icon: Icon(Icons.add, color: colorIcon, size: 18.0,),
                    onPressed: (){
                      onCountChanged(1);
                    },),
                ],
              ),
              MyContainer(
                  context,
                  [

                    MyCustomText("My standard Text",
                      textScaleFactor: 1.2,
                      fontSize: 24.0,
                      color: colorIcon,
                      fontWeight: FontWeight.bold,
                      textDecorationStyle: TextDecorationStyle.wavy,
                    ),
                    MyCustomText("My underline Text",
                      color: colorIcon,
                      decoration: TextDecoration.underline,
                      fontSize: 24.0,
                      textDecorationStyle: TextDecorationStyle.wavy,
                    ),
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
              MyContainer(
                  context,
                  [
                    MyCustomButton(
                      shapeBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextButton(
                          onPressed: (){},
                          child: MyCustomText(
                            "My Gradient Button",
                            color: colorIcon,
                            fontSize: 15.0,
                          )
                      ),
                      decoration: BoxDecoration(
                          color: colorPrimary,
                        borderRadius: BorderRadius.circular(25.0),
                        gradient: LinearGradient(
                            colors: [colorPrimary, Colors.purple
                            ])
                      ),
                    ),
                    MyCustomButton(
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
                        child: MyCustomText("My Flat Button",
                          color: colorIcon,
                           fontSize: 15.0,
                        )
                    ),
                    ),
                    MyCustomButton(
                      child: MaterialButton(
                          elevation: 20.0,
                          minWidth: 250.0,
                          colorBrightness: Brightness.light,
                          splashColor: Colors.red,
                          highlightElevation: 1.0,
                          color: Colors.purple,
                          onPressed: (){},
                          child: MyCustomText("My Material Button",
                            fontSize: 15.0,
                            color: colorIcon,
                          )
                      ),
                    ),
                    MyCustomButton(
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
                          fontSize: 15.0,
                          color: colorIcon,),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0),
                                bottom: Radius.circular(1.0)
                            )
                        ),
                      ),
                    ),
                    MyCustomButton(
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
                    MyCustomButton(
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
                    MyCustomText("My custom Image", color: colorIcon, fontSize: 15.0,),
                    MyCardWithChild(child: Image.asset("assets/images/image1.jpg",
                      height: 250.0,
                      width: MediaQuery.of(context).size.width/1.5,
                      fit: BoxFit.cover,)),
                    ]
              ),
              MyContainer(context, [
                MyCustomButton(
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                      onPressed: showDefaultSnackbar,
                      child: MyCustomText(
                        "Show default snackbar",
                        color: colorIcon,
                        fontSize: 18.0,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                MyCustomButton(
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                      onPressed: () => showSimpleFlushbar(context),
                      child: MyCustomText(
                        "Show simple flushbar",
                        color: colorIcon,
                        fontSize: 18.0,
                      )),
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                MyCustomButton(
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                      onPressed: () => showInfoFlushbar(context),
                      child: MyCustomText(
                        "Show info snackbar",
                        color: colorIcon,
                        fontSize: 18.0,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                MyCustomButton(
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                      onPressed: () => showFlushbarHelper(context),
                      child: MyCustomText(
                        "Show snackbar helper",
                        color: colorIcon,
                        fontSize: 18.0,
                      )),
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                MyCustomButton(
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextButton(
                      onPressed: () => showFloatingSnackbar(context),
                      child: MyCustomText(
                        "Show floating snackbar",
                        color: colorIcon,
                        fontSize: 18.0,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(25.0)),
                ),

              ]),
              MyContainer(context, [
                MyAlertDialog(
                  title: "Warming !!!",
                  description: "You can not access this file",
                  child:
                    MyCustomButton(
                        child: FlatButton(
                          child: MyCustomText("Okay",
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.redAccent
                      ),
                    ),
                ),
              ]),
              MyContainer(context, [
                MyAlertDialog(
                  title: "Insert reset email",
                  description: "",
                  avatarColor: Colors.transparent,
                  avatarContainerColor: Colors.transparent,
                  bottom: 0.0,
                  child: MyCustomButton(
                    child: FlatButton(
                      child: MyCustomText("Close",
                        color: Colors.teal,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,),
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                    ),
                    width: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                    ),
                    elevation: 0.0,
                    alignment: Alignment.bottomRight,
                  ),

                ),
              ]),

              RaisedButton(
                    color: Colors.teal,
                    child: new Text(
                      "Show a alert dialog",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: alert),
              RaisedButton(
                    color: Colors.teal,
                    child: new Text(
                      "Show a  simple alert",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: (() => simpleAlert("Faites votre choix", "description"))),
              RaisedButton(
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

  void onCountChanged(int val) {
    setState(() => count += val);
  }

  void pressed() {
    setState(() {
      print("j'ai ete appuye");
    });
  }

  void showDefaultSnackbar() {
    Scaffold.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 5),
      content: Text(
        "Hello from the default snackbar",
        textScaleFactor: 1.2,
      ),
      action: SnackBarAction(
        label: "Click Me",
        onPressed: () {},
      ),
    ));
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

/*void toNewPage(){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return new SecondPage();
    }));
  }

  void showSimpleFlushbar(BuildContext context) {
    Flushbar(
      title: "Hello from a Flushbar",
      messageText: Text("This is a simple flushbar", style: TextStyle(color: colorIcon),),
      mainButton: FlatButton(
        onPressed: (){},
        child: Text("Click Me",
          style: TextStyle(color: Colors.purple),
        ),
      ),
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showInfoFlushbar(BuildContext context) {
    Flushbar(
      title: "Hello from a Flushbar",
      messageText: MyCustomText("This is a info flushbar",
        color: colorIcon,
        textAlign: TextAlign.left,),
      icon: Icon(Icons.info_outline,
        size: 28,
        color: Colors.blue.shade300,
      ),
      leftBarIndicatorColor: Colors.blue.shade300,
      duration: Duration(seconds: 3),
    ).show(context);
  }

  showFlushbarHelper(BuildContext context) {
    FlushbarHelper.createInformation(
      title: "Hello from a helper Flushbar",
      message: "This is a helper info flushbar",
    ).show(context);
  }

  void showFloatingSnackbar(BuildContext context) {
    Flushbar(
      title: "Hello from the floating snackbar",
      message: "This is a custom floating snackbar",
      padding: EdgeInsets.all(10),
      borderRadius: 8,
      backgroundGradient: LinearGradient(
          colors: [colorPrimary, Colors.purple], stops: [0.6, 1]),
      boxShadows: [
        BoxShadow(color: Colors.black45, offset: Offset(3, 3), blurRadius: 3)
      ],
      // All of the previous Flusbars could be dismissed by swiping down
      // now we want to swipe to the sides
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      // The default curve is Curves.easeOut
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    ).show(context);
  }*/


}
