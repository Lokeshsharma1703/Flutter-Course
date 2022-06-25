import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
       body: Center(
         child: Container(
          // ignore: prefer_const_constructors
          child: Text("Welcome!",style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Dancing Script'
          ),),
         ),
       ),
       backgroundColor: Colors.pink,    
    ));
  }
}