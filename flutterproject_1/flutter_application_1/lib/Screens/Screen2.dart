import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Screen1.dart';

class Screen2 extends StatelessWidget {
  String? title = "";
  Screen2({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!),backgroundColor: Colors.green,),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Goto Screen 1",style: TextStyle(fontSize: 30),),
            onPressed: (){
              Navigator.pop(context);
              }))
          ));  }
  }