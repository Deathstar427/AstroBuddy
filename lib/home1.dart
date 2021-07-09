import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        centerTitle: true,
        title: Text("AstroBuddy"),
        actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.credit_card,),)
    ],
      ),
      body: Center(child: Text("Home"),),
    );
  }

}