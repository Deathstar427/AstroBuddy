import 'package:astrobuddy_test/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/cupertino_icons.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstroBuddy',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          centerTitle: true,
          title: Text("AstroBuddy"),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange)),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => App(),
                      )),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
