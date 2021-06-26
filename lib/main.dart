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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                color: Colors.red,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 250,
                color: Colors.yellow,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 250,
                color: Colors.orange,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 250,
                color: Colors.yellowAccent,
              )
            ],
          ),
        ));
  }
}
