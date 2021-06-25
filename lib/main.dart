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
      body: Center(
          child: Card(
        color: Colors.white38,
        child: Container(
          padding: EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Don't think too much!",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                "Aathil Ahamed",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      )),
    );
  }
}
