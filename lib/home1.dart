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
      body: Column(children: [Container(child:Text("Go live with us"), alignment: Alignment.bottomLeft,), 
      Container(child: Row(children: [ElevatedButton(onPressed: (){}, child:Row(children:[Icon(Icons.call),Text("  "), Text("Live Call"),]),),
      Text("  "),Text("-OR-"),Text("  "),
      ElevatedButton(onPressed: (){}, child:Row(children:[Icon(Icons.chat),Text("  "), Text("Live Chat"),],),),], mainAxisAlignment: MainAxisAlignment.center,
  
      ),
      ),
      Container(child:Text("See Others Kundli"), alignment: Alignment.bottomLeft,),
      Container(child:Center(child: ElevatedButton(onPressed: (){}, child:Row(children:[Icon(Icons.person_add),Text("  "), Text("Add Other Users"),],),),),padding: EdgeInsets.only(left:25,right:25), margin:EdgeInsets.only(left:80, right:80,),
      ),
      Container(child:Text("Our Offerings"), alignment: Alignment.bottomLeft,),
      
      ],
      )
    );
  }

}