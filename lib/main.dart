import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = ' ';

  void _onChnaged(String value) {
    setState(() {
      _value = "On Change " + value;
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = "On Submit " + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Scroll"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(_value),
            TextField(
              onChanged: _onChnaged,
              onSubmitted: _onSubmit,
            )
          ],
        ),
      ),
    );
  }
}
