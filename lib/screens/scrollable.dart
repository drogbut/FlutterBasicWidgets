

import 'package:flutter/material.dart';

class MyScrollable extends StatefulWidget {

  @override
  _MyScrollableState createState() => new _MyScrollableState();

}

class _MyScrollableState extends State<MyScrollable> {

  List<MyObject> myList = [
    new MyObject("name item", Icons.bike_scooter),
    new MyObject("name item", Icons.fast_forward),
    new MyObject("name item", Icons.mail),
    new MyObject("name item", Icons.gamepad),
    new MyObject("name item", Icons.build),
    new MyObject("name item", Icons.share),
    new MyObject("name item", Icons.bike_scooter),
    new MyObject("name item", Icons.fast_forward),
    new MyObject("name item", Icons.mail),
    new MyObject("name item", Icons.gamepad),
    new MyObject("name item", Icons.build),
    new MyObject("name item", Icons.share),
    new MyObject("name item", Icons.bike_scooter),
    new MyObject("name item", Icons.fast_forward),
    new MyObject("name item", Icons.mail),
    new MyObject("name item", Icons.gamepad),
    new MyObject("name item", Icons.build),
    new MyObject("name item", Icons.share),
    new MyObject("name item", Icons.bike_scooter),
    new MyObject("name item", Icons.fast_forward),
    new MyObject("name item", Icons.mail),
    new MyObject("name item", Icons.gamepad),
    new MyObject("name item", Icons.build),
    new MyObject("name item", Icons.share),

  ];
  @override
  Widget build(BuildContext context) {
    Orientation orientation =  MediaQuery.of(context).orientation;
    print(orientation);
    return GestureDetector(
      onTap: (){FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("les scrollables "),
        ),
        body: Center(
          child: (orientation == Orientation.portrait)? myListView(): myGridview(),
          //child: myGridview(),
            //child: myListView()
        ),
      ),
    );
  }

  ListView myListView(){
    return new ListView.builder(
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        String value = myList[index].name;
        return Dismissible(
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (direction){
              setState(() {
                myList.removeAt(index);
              });
            },
            key: new Key(value),
            child: ListTile(
              onTap: (){
                setState(() {
                  print(value);
                });
              },
              subtitle: Text(myList[index].name),
              leading: Icon(myList[index].iconData),
              trailing: Icon(myList[index].iconData),
              title: Text(myList[index].name),
            )
        );
      },
    );
  }

  GridView myGridview(){
    return new GridView.builder(
      itemCount: myList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),
        itemBuilder: (BuildContext context, int index){
          return new Card(
            shadowColor: Colors.blue,
            elevation: 10.0,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Activity", textScaleFactor: 1.2, style: TextStyle(color: Colors.teal,),),
                   Icon(myList[index].iconData, color: Colors.teal,size: 40.0,),
                   Text(myList[index].name, textScaleFactor: 1.5, style: TextStyle(color: Colors.teal,fontStyle: FontStyle.italic),),
                ],

              ),
          );
        }
    );
  }

}

class MyObject {
  String name;
  IconData iconData;

  MyObject(this.name, this.iconData);
}