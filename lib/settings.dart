import 'package:astrobuddy_test/contact_us.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

class Settings extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_SettingsState(); 

}

class _SettingsState extends State<Settings>{
 
  bool _hindi=false;
  bool _noti=false;
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
                            Navigator.push(
                  context, MaterialPageRoute(builder: (context) => App()));
            }
            ),
          centerTitle: true,
          title: Text("Settings"),
        ),
      body:SingleChildScrollView(
        child: Container(child: Column(children: <Widget>[
          SizedBox(height: 10,),
          Center(child: Container(child: Text("USER",style:TextStyle(fontSize: 25,),),),
          ),
          Center(child: Container(child: Text("Useremail@email.com✔"),),
          ),
          Center(child: Container(child: Text("UserPhone number✔"),),
          ),
          Center(child: Card(elevation: 2.0, color: Colors.orangeAccent[700] ,child: Column(
            children: [
              Row(children: [
                Container(child: CircleAvatar(child:Icon(Icons.arrow_circle_down),),),
                SizedBox(width: 100,),
                Column(children: [Text("Credits Available"), Text("0"),],),
                SizedBox(width: 100,),
                Icon(Icons.arrow_forward_ios),
              ],),
              SizedBox(height: 20,),
              Container(child: Center(child: Text("Add Credits", style: TextStyle(color: Colors.white),)),color: Colors.black,),
            ],
          ), ),),
        Container(child: Text("My Account",),alignment: Alignment.bottomLeft,),
        ListTile(leading: Icon(Icons.person),title: Text("My profile"),trailing: Icon(Icons.arrow_forward_ios),onTap:(){ Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));}),
        ListTile(leading: Icon(Icons.call),title: Text("My Call History"),trailing: Icon(Icons.arrow_forward_ios),),
        ListTile(leading: Icon(Icons.settings_power_rounded),title: Text("Logout"),trailing: Icon(Icons.arrow_forward_ios),),
        SizedBox(height: 10,),
        Container(child: Text("Preferences",),alignment: Alignment.bottomLeft,),
        SwitchListTile(
        title: const Text('हिंदी भाषा का प्रयोग करें'),
        value: _hindi,
        onChanged: (bool value) {
        setState(() {
          _hindi = value;
        });
        },
        secondary: const Icon(Icons.language_sharp),
        ),

        SwitchListTile(
        title: const Text('Tip of the Day-Notification'),
        value: _noti,
        onChanged: (bool value) {
        setState(() {
          _noti = value;
        });
        },
        secondary: const Icon(Icons.cloud),
        ),

        SizedBox(height: 10,),
        Container(child: Text("Miscellaneous",),alignment: Alignment.bottomLeft,),
        ListTile(leading: Icon(Icons.contact_phone),title: Text("Contact Us"),trailing: Icon(Icons.arrow_forward_ios),onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs()));
        } ,),
        ListTile(leading: Icon(Icons.attach_money),title: Text("Our Offers"),trailing: Icon(Icons.arrow_forward_ios),),
        ListTile(leading: Icon(Icons.share),title: Text("Share"),trailing: Icon(Icons.arrow_forward_ios),),
        ],)),
      )
    ),
    );
  }

}