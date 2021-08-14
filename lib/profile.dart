import 'package:astrobuddy_test/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:intl/intl.dart';
import 'passcode_change.dart';
import 'home.dart';

class Profile extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_ProfileState();
}

class _ProfileState extends State<Profile>{

  @override
  Widget build(BuildContext context) {

    var now = DateTime.now(),status;
    var hour = 01,minute = 50 ,ampm = "AM",location = "Raisinghnagar",cc = "+91",mnumber = "742XXXXX117",email="garvshah01@gmail.com";
    var date = 29, month = "Oct",year = 2000, name = "Garv Shah",age=now.year - year;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              )),
          leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Settings()));
          }
          ),
          centerTitle: true,
          title: Text("My Profile"),
        ),
        body : SingleChildScrollView(
          child: Container(
            child:Column(
              children: [
                //Center(child:Image.network("https://unsplash.com/@charlesdeluvio",height:20)),
                Center(child: Text("$name",style: TextStyle(fontSize: 20),)),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$age",style: TextStyle(fontSize: 20)),
                    Text("Yrs |",style: TextStyle(fontSize: 20)),
                    Icon(Icons.bookmark_border,size: 30,),
                  ],
                ),
                Card(
                  child:Column(children:[
                  ListTile(leading:Icon(Icons.calendar_today),title:Text("$date / $month / $year")),
                  ListTile(leading:Icon(Icons.watch_later_outlined),title:Text("$hour : $minute $ampm")),
                    ListTile(leading: Icon(Icons.location_on),title:Text("$location")),
                    ListTile(leading: Icon(Icons.phone_android),title:Text("$cc - $mnumber")),
                    ListTile(leading: Icon(Icons.wc_outlined),title:Text( "$status"),trailing: IconButton(icon: Icon(Icons.edit), onPressed:(){
                      users(status);
                      setState(() {
                      status = users;
                    });} )),
                    ListTile(leading:Icon(Icons.email),title :Text("$email"),trailing:IconButton(icon:Icon(Icons.edit),onPressed: (){},)),
                    ListTile(leading:Icon(Icons.lock),title:Text("****"),trailing:IconButton(icon: Icon(Icons.edit),onPressed:(){Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Passcodechange()));})),
                ])),
              ],
            )
          )
        ),
    )

    );
  }
  void users(var _status) => showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(margin:EdgeInsets.only(top:10),child:Text("Change Matital Status",style:TextStyle(fontSize: 18))),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('SINGLE'),
            onTap: () {
              setState(() {
                _status = "SINGLE";
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('ENGAGED'),
            onTap: () {},
            ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('MARRIED'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('DIVORCED'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('WIDOW'),
            onTap: () {},
          ),

        ],
      ));
}