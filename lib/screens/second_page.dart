/*
import 'package:flutter/material.dart';
import 'file:///C:/Users/user/git/flutter/mise_en_page/lib/screens/scrollable.dart';
import 'package:mise_en_page/widgets/my_custom_text.dart';

class SecondPage extends StatefulWidget {

  @override
  _SecondPageState createState() => new _SecondPageState();

}

class _SecondPageState extends State<SecondPage> {

  String changed;
  String submitted;
  int isRadois;
  bool isSwitch = false;
  double sliderCounter = 0.0;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime =TimeOfDay.now();

  List<String> radioItem= ["banane", " Papaye", "Mangue"];

  Map checkListe = {
    "banane": false,
    "papaye": false,
  };

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay pickedS = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child,
          );});

    if (pickedS != null && pickedS != selectedTime )
      setState(() {
        selectedTime = pickedS;
      });
  }

  List<Widget> checList(){
    List<Widget> list = new List();
    checkListe.forEach((key, value) {
      Row row = new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyCustomText(key),
          Checkbox(value: value, onChanged: (bool b){
            setState(() {
              checkListe[key] = b;
            });
          }),
        ],
      );
      list.add(row);
    });
    return list;
  }

  Widget mySwitch(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCustomText("Aimez-vous ce que vous faites ?"),
        Switch(
            activeColor: Colors.pink,
            value: isSwitch, onChanged: (bool b){
          setState(() {
            isSwitch = b;
          });
        })
      ],
    );
  }

  Widget mySlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCustomText("la veleur du slider est: $sliderCounter"),
        Slider(
            activeColor: Colors.pink,
            inactiveColor: Colors.black,
            divisions: 5,
            max: 100,
            min: 0.0,
            value: sliderCounter, onChanged: (double d){
          setState(() {
            sliderCounter = d;
          });
        })
      ],
    );
  }

  List<Widget> radioList(){
    List<Widget> list = new List();
    for(int i = 0; i < radioItem.length; i++){
      Row row = new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyCustomText(radioItem[i]),
          Radio(
              value: i,
              groupValue: isRadois,
              onChanged: (int index){
                setState(() {
                  isRadois = index;
                });
              }
          ),
        ],
      );
      list.add(row);
    }
    return list;
  }

  void toScrollable(){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return new MyScrollable();
    }));
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calculateur de calorie"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (String s){
                  setState(() {
                    changed = s;
                  });
                },
                onSubmitted: (String st){
                  setState(() {
                    submitted = st;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Votre age est de:",
                ),
              ),
              MyCustomText(changed ?? ""),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: checList()
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: radioList()
              ),
              mySwitch(),
              mySlider(),
              RaisedButton(
                color: Colors.pink,
                onPressed: () => _selectDate(context),
                child: MyCustomText("Selected Date is: ${selectedDate.day}-${selectedDate.month}-${selectedDate.year}"),
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () => _selectTime(context),
                child: MyCustomText("$selectedTime"),
              ),
              new RaisedButton(
                  color: Colors.teal,
                  child: new Text(
                    "Show the next page",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: toScrollable),
            ],
          ),
        ),
      ),
    );
  }
}





*/
