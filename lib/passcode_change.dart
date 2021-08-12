import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'profile.dart';

class Passcodechange extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_PasscodechangeState();
}

class _PasscodechangeState extends State<Passcodechange>{
  @override
  Widget build(BuildContext context){
    var screensize = MediaQuery.of(context).size;
    final oldPassword = TextEditingController();
    final newPassword = TextEditingController();
    final confirmpassword = TextEditingController();
    return MaterialApp(
    home:Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
           bottom: Radius.circular(10),
        )),
        leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => Profile()));
        }
        ),
      title:Text("Change Password"),
    ),
        body: Container(
          child:Column(
            children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:Border.all( color: Colors.orange,width:1.5)
                    ),
                    margin: EdgeInsets.only(left:60,right:60,top:40),
                  child: TextField(
                    controller: oldPassword,
                    decoration: InputDecoration(
                   border: OutlineInputBorder(),
                    hintText: 'Enter Old 4-digit PIN',
                    ),
                    obscuringCharacter: "*",
                    autofocus: false,
                    obscureText: true,)),

              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all( color: Colors.orange,width:1.5)
                  ),
                  margin: EdgeInsets.only(left:60,right:60,top:15),
                  child: TextField(
                    controller: newPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '4-digit PIN',
                    ),
                    obscuringCharacter: "*",
                    autofocus: false,
                    obscureText: true,)),

              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:Border.all( color: Colors.orange,width:1.5)
                  ),
                  margin: EdgeInsets.only(left:60,right:60,top:15),
                  child: TextField(
                    controller: confirmpassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm 4-digit PIN',
                    ),
                    obscuringCharacter: "*",
                    autofocus: false,
                    obscureText: true,)),
              SizedBox(height:40),

              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  border:Border.all( color: Colors.black,width:5)
                ),
                  margin:EdgeInsets.only(left:80,right:80),child:
              RaisedButton(color:Colors.black,onPressed: (){},child: Row(children:[Text("Submit",style: TextStyle(fontSize: 18,color: Colors.white),),Spacer(flex:1),Icon(Icons.chevron_right,color:Colors.white,)]),
                padding: EdgeInsets.only(left:20,top:10,right:20,bottom:10)))
            ],

          )
        )
    ));
}
}
