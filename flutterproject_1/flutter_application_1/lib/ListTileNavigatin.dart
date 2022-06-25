import 'package:flutter/material.dart';

class ListtileNavigation extends StatelessWidget {
  String? title = "";
  ListtileNavigation({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: Center(
        child: Text(title!, style: TextStyle(fontSize: 24),),
      ),
    ),
    );
  }
}