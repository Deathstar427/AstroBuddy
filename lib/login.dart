import 'package:astrobuddy_test/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'AstroBuddy',
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          centerTitle: true,
          title: Text("AstroBuddy"),
        ),
        body:Container(
          child: Center(
            child: Column( children: [
              SizedBox(height: 20,),
              Container(
                        child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                          hintText: 'Username',
                          prefixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,

    ),
    margin: EdgeInsets.only(left: 10, right: 10,),
  ),
  SizedBox(height: 20,),
  Container(
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.password),
                        ),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,

    ),
    margin: EdgeInsets.only(left: 10, right: 10,),
  ),
  SizedBox(height: 20,),
  ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>App(),)), child:Text('Submit'),),
            ],),
          ),
        ),
      ),
    );
  }

}