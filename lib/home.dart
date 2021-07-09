import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'chat.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astro Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }


}
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>Homestate();

}

class Homestate extends State<Home>{
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( leading: Icon(Icons.person),
        centerTitle: true,
        title: Text("Astro Buddy"),
        actions: [IconButton(icon:Icon(Icons.credit_card), onPressed: (){} ),],
      ),
      body: Center(child: Text("Home"),),
      bottomNavigationBar: buildBottomNavigation(),
    );

  }
  

  Widget buildBottomNavigation(){
    return BottomNavyBar(
      selectedIndex: index,
      onItemSelected: (index)=> setState((){
        this.index=index;
    switch(index) {
      case 0: Navigator.push(context, MaterialPageRoute(builder:(context)=>App(), )); break;
      case 1: Navigator.push(context, MaterialPageRoute(builder:(context)=>ChatPage(), )); break;
      default: Navigator.push(context, MaterialPageRoute(builder:(context)=>App(), )); break;
 
    }
  }),
      items:<BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          textAlign: TextAlign.center,
          ),
        BottomNavyBarItem(
          icon: Icon(Icons.chat),
          title: Text("Chat"),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.call),
          title: Text("Call"),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text("Settings"),
          textAlign: TextAlign.center,
        ),
      ],);
  }

}