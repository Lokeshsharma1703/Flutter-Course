// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
       body: Center(
         child: Container(
          child: Text("This is stateless widget",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Dancing Script'
          ),),
         ),
       ),
       backgroundColor: Colors.blue,    
    ));
  }
}