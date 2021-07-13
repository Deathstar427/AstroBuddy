import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(leading: Icon(Icons.arrow_back),
    title: Text("AstroBuddy Chat"),
    centerTitle: true,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.history),)
    ],
    ),
    body:Row(children: [Container(child: Text("Questions people have asked \nAstroBuddy:"),margin:EdgeInsets.all(20),)],) 
    );

}