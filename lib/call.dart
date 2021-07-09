import 'package:flutter/material.dart';

class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(leading: Icon(Icons.arrow_back),
    title: Text("Talk to AstroBuddy"),
    centerTitle: true,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.history),)
    ],
    ),
    body: Text("Call"),);

}