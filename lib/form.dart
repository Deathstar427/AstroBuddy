import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginForm(),
    );
  }
}


class LoginForm extends StatefulWidget {
  @override
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {

  final userName = TextEditingController();
  DateTime _currentDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != _currentDate)
      setState(() {
        _currentDate = pickedDate;
      });
  }

  /*void initState(){
    super.initState();
    userName.addListener(() => setState((){}));

  }*/

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //name(),
                ListTile(
                  title: Text("${_currentDate.year.toString()}"),
                  trailing: IconButton(icon:Icon(Icons.calendar_today),onPressed:() => _selectDate(context)),

                )
    ]))

    );

  }

  Widget name() => TextField(
    cursorColor: Colors.deepOrange,
    controller: userName,
    decoration: InputDecoration(
        hintText: "User Name",

        border: OutlineInputBorder(),
        suffixIcon:
            IconButton(
          icon: Icon(Icons.close,color: Colors.black,),
          onPressed: () => userName.clear(),
            )
    ),
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.done,
  );


  }

