import 'package:astrobuddy_test/settings.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'home1.dart';
import 'chat.dart';
import 'call.dart';
import 'settings.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstroBuddy',
      home: Scaffold(
        body: buildPages(),
        bottomNavigationBar: buildBottomNav(),
      ),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return ChatPage();
      case 2:
        return CallPage();
      case 3: return Settings();
      default:
        return HomePage();
    }
  }

  Widget buildBody() => Center(
        child: Text("Home"),
      );

  Widget buildBottomNav() {
    return BottomNavyBar(
      backgroundColor: Colors.cyan[90],
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          activeColor: Colors.deepOrange,
          icon: Icon(Icons.home),
          title: Text("Home"),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          activeColor: Colors.deepOrange,
          icon: Icon(Icons.chat),
          title: Text("Chat"),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          activeColor: Colors.deepOrange,
          icon: Icon(Icons.call),
          title: Text("Call"),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          activeColor: Colors.deepOrange,
          icon: Icon(Icons.settings),
          title: Text("Settings"),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
