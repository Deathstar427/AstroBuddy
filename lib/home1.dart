import 'package:astrobuddy_test/call.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'call_creds.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          leading: new IconButton(
            icon: new Icon(Icons.person),
            onPressed: users,
          ),
          centerTitle: true,
          title: Text("AstroBuddy"),
          actions: [
            IconButton(
              onPressed: creds,
              icon: Icon(
                Icons.credit_card,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child:
                // scrollDirection: Axis.vertical,
                Column(
          children: [
            Container(
              child: Text("Go live with us"),
              alignment: Alignment.bottomLeft,
            ),
            Container(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CallPage())),
                    child: Row(children: [
                      Icon(Icons.call),
                      Text("  "),
                      Text("Live Call"),
                    ]),
                  ),
                  Text("  "),
                  Text("-OR-"),
                  Text("  "),
                  ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatPage())),
                    child: Row(
                      children: [
                        Icon(Icons.chat),
                        Text("  "),
                        Text("Live Chat"),
                      ],
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Container(
              child: Text("See Others Kundli"),
              alignment: Alignment.bottomLeft,
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: users,
                  child: Row(
                    children: [
                      Icon(Icons.person_add),
                      //Text("  "),
                      Text("  Add Other Users"),
                    ],
                  ),
                ),
              ),
              //padding: EdgeInsets.only(left: 25, right: 25),
              margin: EdgeInsets.only(
                left: 80,
                right: 80,
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text("Our Offerings"),
                  Spacer(flex: 1),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        x = 0;
                      });
                    },
                    icon: Icon(
                      Icons.list_alt_sharp,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        x = 1;
                      });
                      x = 1;
                    },
                    icon: Icon(
                      Icons.grid_on_sharp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 520,
              child: x == 0 ? listview() : _gridView(),
            ),
          ],
        )));
  }

  void users() => showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      context: context,
      builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Add Other'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Add Other'),
                subtitle: Text('Main User'),
                onTap: () {},
              ),
            ],
          ));

  void creds() => showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      context: context,
      builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.chat),
                title: Text('Buy Chat Credits'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Callcred())),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Buy Call Credits'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CallPage())),
              ),
            ],
          ));
}

Widget _gridView() {
  List<String> items = [
    "Your Kundli",
    "Others Kundli",
    "Match Making",
    "Prediction",
    "Panchang"
  ];
  return GridView.builder(
    itemCount: items.length,
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) => Card(
      margin: EdgeInsets.all(20.0),
      elevation: 4.0,
      child: GridTile(
          child: Center(
        // children
        child: Text(items[index]),
      )),
    ),
  );
}

//   list View   //
Widget listview() {
  List<String> item = <String>[
    "Your Kundli",
    "Others Kundli",
    "Match Making",
    "Prediction",
    "Panchang"
  ];
  return Column(children: [
    Expanded(
        child: Container(
            child: ListView(children: [
      listview1(item[0]),
      listview1(item[1]),
      listview1(item[2]),
      listview1(item[3]),
      listview1(item[4]),
    ]))),

    Container(
      child: Text("Our Resource"),
      alignment: Alignment.bottomLeft,
    ),

    Container(
      height: 130,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [listview1("VIDEOS"), listview1("MYTH BUSTER")],
      ),
    ),
    Container(child: Text("Daily Horoscope"),
    alignment: Alignment.bottomLeft,),

    Container(child: listview1("Fetch Your daily Horoscope"))
  ]);
}

Widget listview1(String s) {
  return Card(
      elevation: 4.0,
      child: Column(children: <Widget>[
        ListTile(
          dense: true,
          title: Text(s),
          onTap: () {},
        ),
      ]));
}
