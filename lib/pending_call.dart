import 'package:flutter/material.dart';

class Pencall extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_PendState();

}

class _PendState extends State<Pencall>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstroBuddy',
      
      home:Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
              Navigator.pop(context,false);  
            }
            ),
          centerTitle: true,
          title: Text("Check Pending Calls"),
        ),
      body:Container(child: Text('Pending call'),)
    ),
    );
  }
}