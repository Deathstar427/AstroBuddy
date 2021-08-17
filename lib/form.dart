import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {

  final userName = TextEditingController();
  DateTime dob = DateTime.now() ;


  void initState(){
    super.initState();
    dob = DateTime.now();
    userName.addListener(() => setState((){}));

  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
        debugShowCheckedModeBanner: false,
        home:Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //name(),
                ListTile(
                  title: Text("${dob.year}"),
                  trailing: IconButton(icon:Icon(Icons.calendar_today),onPressed:() => _datepicker()),

                )
    ]))

    ));

  }

  Future<void> _datepicker() async {
    final DateTime datePicker = await showDatePicker(context: context,
        initialDate: dob,
        firstDate: DateTime(1944),
        lastDate: DateTime.now()
    ) as DateTime;
    if(datePicker != dob){
      setState(() {
        dob = datePicker;
      });}

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
}
