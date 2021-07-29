import 'package:astrobuddy_test/home.dart';
import 'package:astrobuddy_test/pending_call.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        )),
        leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));  
            }
            ),
        title: Text("Talk to AstroBuddy"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.history),
          )
        ],
      ),
      body: videoPage(),
      floatingActionButton: Container(
          width: 200,
          //height: 20,
          child: FittedBox(
            child: FloatingActionButton.extended(
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Pencall())),
              hoverColor: Colors.grey[400],
              icon: Icon(Icons.call),
              label: Text("Avail your last pending call"),
            ),
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
    );
  }
}

Widget videoPage() {
  return Container(
      child: Column(
    children: <Widget>[
      Container(
          margin: EdgeInsets.only(top: 15, bottom: 5, left: 5),
          child: Text("Choose Video Call Plans"),
          alignment: Alignment.bottomLeft),
      Flexible(
        child: gridView(),
      )
    ],
  ));
}

Widget gridView() {
  return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 55,
      itemBuilder: (
        context,
        index,
      ) =>
          Card(
              margin: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4.0,
              child: GridTile(
                  child: Column(
                children: [
                  star("5.0"),
                  Expanded(
                    child: circleBox('image/a.png'),
                  ),
                  Divider(),
                  Text("Astrobuddy Chandrika"),
                  SizedBox(height: 5),
                  tStyle("English/Hindi"),
                  SizedBox(height: 5),
                  tStyle("Rs 20/Min"),
                  videoButton(),
                ],
              ))));
}

Widget star(String s) {
  return Container(
      margin: EdgeInsets.only(right: 10),
      alignment: Alignment.bottomRight,
      child: Row(children: [
        Spacer(
          flex: 1,
        ),
        Text(s),
        Icon(
          Icons.star,
        ),
      ]));
}

Widget circleBox(String s) {
  return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green, width: 2),
          image: new DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(s),
          )));
}

Widget tStyle(String s) {
  return Text(s,
      style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(0.4)));
}

Widget videoButton() {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
    // height: 10,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
      onPressed: () {},
      padding: EdgeInsets.all(10.0),
      color: Color.fromRGBO(0, 160, 227, 1),
      textColor: Colors.white,
      child: Text("Video Call", style: TextStyle(fontSize: 10)),
    ),
  );
}

//************************************************************************************************ */

//Widget

/*child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.video_call),
                                        Expanded(
                                          child: Text("Video Call",
                                              style: TextStyle(fontSize: 10)),
                                        )
                                      ])*/

/* child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: 55,
                  itemBuilder: (
                    context,
                    index,
                  ) =>
                      Card(
                          margin: EdgeInsets.all(20.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 4.0,
                          child: GridTile(
                              child: Column(
                            children: [
                              Icon(
                                Icons.home_repair_service_outlined,
                              ),
                            ],
                          ))))*/

//************************************************************************************************ */
