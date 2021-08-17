import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstroBuddy',
      
      home:Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
              Navigator.pop(context,false);  
            }
            ),
          centerTitle: true,
          title: Text("Contact Us"),
        ),
      body:contact(),
    ),
    );
  }
  Widget contact(){
    return Container(
      child: Center(child: Column(
        children: <Widget>[
          const SizedBox(height: 24,),
          Container(child: Image.asset("assets/image/a.png")),
          const SizedBox(height: 10,),
          Card(margin: EdgeInsets.all(20.0),
            elevation: 10.0,
            child:Column(children: [
            SizedBox(height: 15,),
            Container(child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.language),
                SizedBox(width: 10,),
                InkWell(child: Text("www.astrobuddy.guru"),onTap: (){}),
              ],
            ),),
            Container(child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.mail),
                SizedBox(width: 10,),
                InkWell(child: Text("contact@astrobuddy.guru"),onTap: (){}),
              ],
            ),),
            SizedBox(height: 100,),
            Divider(thickness: 15,color: Colors.orange, indent: 50, endIndent: 50,),
            SizedBox(height: 30,)
          ],)),
          const SizedBox(height: 20,),
        ],
      ),),
    );
  }
  
}