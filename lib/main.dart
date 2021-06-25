import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        // actions: [
        //   IconButton(icon: Icon(Icons.search), onPressed: () {}),
        //   // IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        // ],
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.camera,
            color: Colors.white,
            size: 55.0,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: Container(
              color: Colors.red,
              height: 75.0,
              width: double.infinity,
              child: Text(
                'This is PreferredSize',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    textBaseline: TextBaseline.ideographic),
                textAlign: TextAlign.center,
              )),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Text("Aathil"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.camera),
        onPressed: () {
          print("The floating button is working");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        elevation: 10.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Aathil Ahamed'),
              accountEmail: Text('pattarailk@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'A',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'R',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text("All Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(height: 1),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text("Promotions"),
              leading: Icon(Icons.local_offer),
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        RaisedButton(
          child: Text("Click me"),
          onPressed: () {
            print("Raised Button");
          },
          color: Colors.red,
        )
      ],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'More', icon: Icon(Icons.more_horiz))
        ],
        onTap: (int index) {
          if (index.toString() == "0") {
            print("Home");
          } else {
            print("More");
          }
        },
      ),
      endDrawer: Drawer(),
    );
  }
}
