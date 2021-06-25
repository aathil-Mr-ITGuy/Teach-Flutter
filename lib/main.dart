import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void showBottom() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("Welcome to Flutter Tutorial"),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Bar"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "Click Here",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          onPressed: showBottom,
          color: Colors.blue,
        ),
      ),
    );
  }
}
