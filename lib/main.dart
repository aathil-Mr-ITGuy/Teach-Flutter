import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _volume = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volume Controller'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  color: Colors.blue,
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      // if (_volume != 0.0)
                      while (_volume >= 0.1) {
                        _volume -= 10.0;
                      }
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.volume_up),
                  color: Colors.black,
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.blue,
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      _volume += 10.0;
                    });
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Volume is $_volume',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
