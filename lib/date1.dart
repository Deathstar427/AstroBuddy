import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final userName = TextEditingController();
  DateTime _currentDate = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  late var timeofbirth, dateofbirth;

  //pass timeofbirth and dateofbirth and name in database

// Date Picker
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != _currentDate)
      setState(() {
        _currentDate = pickedDate;
        dateofbirth =
            "${_currentDate.day.toString()} - ${_currentDate.month.toString()} - ${_currentDate.year.toString()}";
      });
  }

// Time Picker
  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null && newTime != _time) {
      setState(() {
        _time = newTime;
        timeofbirth = "${_time.hour} : ${_time.minute}";
      });
    }
  }

// Name Text Field
  Widget name() => Card(
      elevation: 5,
      child: TextField(
        cursorColor: Colors.deepOrange,
        controller: userName,
        decoration: InputDecoration(
            hintText: "User Name",
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ),
              onPressed: () => userName.clear(),
            )),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
      ));

  // date Card
  Widget date() => Card(
        borderOnForeground: true,
        elevation: 5,
        child: ListTile(
          hoverColor: Colors.grey[900],
          dense: true,
          title: Text(
              "${_currentDate.day.toString()} - ${_currentDate.month.toString()} - ${_currentDate.year.toString()}"),
          trailing: IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () => _selectDate(context),
            //child: Text('Select date'),
          ),
        ),
      );

  // time Card
  Widget time() => Card(
      elevation: 5,
      child: ListTile(
        title: Text("${_time.hour} : ${_time.minute}"),
        trailing: IconButton(
          icon: Icon(Icons.alarm_add),
          onPressed: () => _selectTime(context),
        ),
      ));

  void initState() {
    super.initState();
    userName.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        )),
        centerTitle: true,
        title: Text("AstroBuddy"),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => App()));
            }),
      ),
      body: Container(
        padding: EdgeInsets.only(left: width / 5, right: width / 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 30),
            //gender,
            name(),
            date(),
            time()
          ],
        ),
      ),
    );
  }
}




 /*
static final Map<String, String> genderMap = {
    'male': 'Male',
    'female': 'Female',
    'other': 'Other',
  };

  String _selectedGender = genderMap.keys.first;



final gender = new Material(
    color: Colors.transparent,
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Select Gender',
            style: TextStyle(
              color: CupertinoColors.systemBlue,
              fontSize: 15.0,
            )),
        const Padding(
          padding: EdgeInsets.only(bottom: 5.0),
        ),
        CupertinoRadioChoice(
            choices: genderMap,
            onChange: onGenderSelected,
            initialKeyValue: _selectedGender)
      ],
    ),
  );

 void onGenderSelected(String genderKey) {
    setState(() {
      _selectedGender = genderKey;
    });
  }
 */