import 'dart:math';

import 'package:animation/nextpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "temp",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 50;
  double width = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" COntaainer"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          color: Colors.blue,
          duration: Duration(milliseconds: 700),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            child: Text("deom"),
            onPressed: () {
              setState(() {
                Random random = Random();
                height = random.nextInt(300).toDouble();
                width = random.nextInt(300).toDouble();
              });
            },
          ),
          MaterialButton(
            child: Text("Page 2"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NextPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
