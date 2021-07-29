import 'package:flutter/material.dart';

class Callcred extends StatelessWidget{
  String credits='';
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
          title: Text("Add Chat Credits"),
        ),
      body:CredPage(),
    ),
    );
  }
  Widget CredPage(){
    return Container(
      child: Center(child: Column(
        children: <Widget>[
          const SizedBox(height: 24,),
          Container(child: Text('Available Chat Credits : 0'),
          ),
          const SizedBox(height: 24,),
          input(),
          Divider(),
          const SizedBox(height: 10,),
          Container(child:Text('(1 Chat Credit = INR 100.00')),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            print('$numberController.text');
            credits='$numberController.text';
          }, child: Text('Make Payment'))
        ],
      ),),
    );
  }
  final numberController =TextEditingController();
  Widget input()=>Container(
    child: TextField(
      controller: numberController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        hintText: 'Enter Chat Credits',
        prefixIcon: Icon(Icons.attach_money),
      ),
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,

    ),
    margin: EdgeInsets.only(left: 10, right: 10,),
  );
}