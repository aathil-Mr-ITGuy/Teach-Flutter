import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Bar"),
      ),
      body: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print("Home");
                }),
            IconButton(
                icon: Icon(Icons.inbox),
                onPressed: () {
                  print("Inbox");
                }),
            IconButton(
                icon: Icon(Icons.mail),
                onPressed: () {
                  print("Mail");
                }),
            IconButton(
                icon: Icon(Icons.local_offer),
                onPressed: () {
                  print("Promotion");
                })
          ],
        ),
      ),
    );
  }
}
