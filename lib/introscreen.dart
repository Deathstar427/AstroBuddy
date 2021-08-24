import 'package:astrobuddy_test/home.dart';
import 'package:astrobuddy_test/login.dart';
import 'package:nice_intro/nice_intro.dart';
import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:tinycolor/tinycolor.dart';

class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'AstroBuddy',
      home: Intro(),
    );
  }

}

class Intro extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _IntroState();
  
}

class _IntroState extends State<Intro>{
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      ),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login())),
      footerBgColor: TinyColor(Colors.blue).lighten().color,
      activeDotColor: Colors.white,
      footerRadius: 18.0,
//      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Search',
          imageAsset: 'assets/img/1.png',
          description: 'Quickly find all your messages',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'Focused Inbox',
          headerBgColor: Colors.white,
          imageAsset: 'assets/img/2.png',
          description: "We've put your most important, actionable emails here",
        ),
        IntroScreen(
          title: 'Social',
          headerBgColor: Colors.white,
          imageAsset: 'assets/img/3.png',
          description: "Keep talking with your mates",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }

}