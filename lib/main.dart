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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Scroll"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(height: 100, width: 150, color: Colors.red),
            SizedBox(
              width: 10,
            ),
            Container(height: 100, width: 150, color: Colors.yellow),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.orange,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
