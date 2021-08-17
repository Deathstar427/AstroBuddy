import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'home.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';



class Newform extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Newform();
}

class _Newform extends State<Newform>{
  late var _gender;
  late var _name;
  late var _dob;  //date of birth
  late var _tob;  //time of birth
  late var _pob;  //place of birth

  final _formKey = GlobalKey<FormBuilderState>();

  Widget _buildGender(){
    return  FormBuilderChoiceChip(
      spacing: 3,
      alignment: WrapAlignment.spaceEvenly,
      name: "choice_chip",
      decoration: InputDecoration(
          labelText: "Gender",
          labelStyle: TextStyle(color: Colors.black)),
      options: [
        FormBuilderFieldOption(
            child: Text("Male"), value: "male"),
        FormBuilderFieldOption(
            child: Text("Female"), value: "female"),
        FormBuilderFieldOption(
            child: Text("Trans"), value: "trans"),
        //FormBuilderFieldOption(child: Text("Peach"), value: "peach"),
      ],
      onSaved: (value){
        _gender = value;
      },
      onChanged: (value){
        setState(() {
          _gender = value;
        });
      },
    );
  }
  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (value){
        if(value!.isEmpty){
          return "Name is required" ;
        }
        return null;
      },
      onChanged: (value){
        setState(() {
          _name = value;
        });
      },
      onSaved: (value){
        _name = value;
      },
    );
  }
  Widget _buildDob(){
    return FormBuilderDateTimePicker(
      name: 'date',
      inputType: InputType.date,
     format: DateFormat("dd-mm-yyyy"),
      decoration: InputDecoration(labelText: 'Date Of Birth'),
      initialDate: DateTime.now(),

      onSaved: (value) => _dob = value,
      onChanged:(value){
        setState(() {
          _dob = value;
       });
      },
    );
  }
  Widget _buildTob(){
    return Container();
  }
  Widget _buildPob(){
    return Container();
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
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
        title: Text("Add Others"),
        actions: [
          Text("NEXT"),
          IconButton(icon: Icon(Icons.arrow_right_alt),onPressed: (){},)
        ],
      ),
      body:Container(
          margin:EdgeInsets.all(30),
        child:FormBuilder(
            child:Column(

 //             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    _buildGender(),
                    //_buildName(),
                    _buildDob(),
              ],
            )
        )
      ),)
      );
  }
}