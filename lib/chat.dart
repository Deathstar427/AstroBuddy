import 'package:flutter/material.dart';
import 'home.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        )),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => App()));
            }),
        title: Text("AstroBuddy Chat"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.history),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              decoration: new BoxDecoration(), //color: Color(0xffffb38a)),
              child: Column(children: [
                Container(

                    //
                    width: screensize.width,
                    child: Card(
                        margin: EdgeInsets.all(8),
                        elevation: 4.0,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Questions People have asked AstroBuddy:",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ))),
                Container(
                    // color: Colors.orange[200],
                    margin: EdgeInsets.only(top: 10),
                    child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                              leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('image/education.png',
                                      fit: BoxFit.cover)),
                              title: Card(
                                  color: Colors.white.withOpacity(0.2),
                                  elevation: 0.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        "I am not so good at studies, I would like to know whether I should go for higher studies or join family business?",
                                        style: TextStyle(fontSize: 18)),
                                  ))),
                          Divider(
                            thickness: 0,
                            color: Colors.transparent,
                          ),
                          ListTile(
                              leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('image/health.png',
                                      fit: BoxFit.cover)),
                              title: Card(
                                  color: Colors.white.withOpacity(0.1),
                                  elevation: 0.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        "I am having major health issues from last two months. I want to know if it has anything to do with my sun signs?",
                                        style: TextStyle(fontSize: 18)),
                                  ))),
                          ListTile(
                              leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('image/relationship.png',
                                      fit: BoxFit.cover)),
                              title: Card(
                                  color: Colors.white.withOpacity(0.1),
                                  elevation: 0.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        "I would like to het my horoscope matched with my partner.",
                                        style: TextStyle(fontSize: 18)),
                                  ))),
                          ListTile(
                              leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('image/career.png',
                                      fit: BoxFit.cover)),
                              title: Card(
                                  color: Colors.white.withOpacity(0.1),
                                  elevation: 0.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        "I have some questions about my career but I don't have exact date of birth, can you still help?",
                                        style: TextStyle(fontSize: 18)),
                                  ))),
                          ListTile(
                              leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('image/wealth.png',
                                      fit: BoxFit.cover)),
                              title: Card(
                                  color: Colors.white.withOpacity(0.1),
                                  elevation: 0.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        "I want to know whether I will succeed in my new business?",
                                        style: TextStyle(fontSize: 18)),
                                  )))
                        ]))
              ]))),
      floatingActionButton: Container(
          width: 100,
          child: FittedBox(
            child: FloatingActionButton.extended(
              onPressed: () {},
              hoverColor: Colors.grey[400],
              icon: Icon(Icons.chat),
              label: Text("Chat"),
            ),
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
