import 'package:flutter/material.dart';

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
          leading: Icon(Icons.person),
          centerTitle: true,
          title: Text("AstroBuddy"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.credit_card,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: Text("Go live with us"),
              alignment: Alignment.bottomLeft,
            ),
            Container(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
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
                    onPressed: () {},
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
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.person_add),
                      Text("  "),
                      Text("Add Other Users"),
                    ],
                  ),
                ),
              ),
              padding: EdgeInsets.only(left: 25, right: 25),
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
              height: 500,
              child: x == 0 ? list_view() : _gridView(),
            )
          ],
        )));
  }
}

class list_view extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _list_view();
}

class _list_view extends State<list_view> {
  int _sindex = 0;
  List<String> item = <String>["Garv", "Shah", "Is", "A"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: item.length,
      itemBuilder: (context, int index) {
        final items = item[index];
        return Card(
            elevation: 4.0,
            child: Column(
                // MainAxisSize mainAxisSize = MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    dense: true,
                    title: Text(items),
                    //selected: index == _sindex,
                    onTap: () {
                      setState(() {
                        _sindex = index;
                      });
                    },
                  ),
                ]));
      },
    );
  }
}

/*class grid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _grid();
}

class _grid extends State<grid> {
  List<String> _item = ["1", "2", "3", "4", "5", "6", "7", "8"];
  @override
  Widget build(BuildContext context) {
    //List<String> items;
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children:_item.map((values){
          return Container(
            alignment:Alignment.center,
            child: Text(values)
          )
        })toList(),);
  }
}*/

Widget _gridView() {
  List<String> items = ["1", "2", "3", "4", "5", "6"];
  return GridView.builder(
    itemCount: items.length,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) => Card(
      margin: EdgeInsets.all(30.0),
      elevation: 4.0,
      child: GridTile(
          child: Center(
        // children
        child: Text(items[index]),
      )),
    ),
  );
}
