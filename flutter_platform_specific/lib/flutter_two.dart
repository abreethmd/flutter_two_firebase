import 'package:flutter/material.dart';

class FlutterTwo extends StatefulWidget {
  @override
  _FlutterTwoState createState() => _FlutterTwoState();
}

class _FlutterTwoState extends State<FlutterTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.green, child: Center(child: Text("You Came to Flutter Activity")),);
  }
}
