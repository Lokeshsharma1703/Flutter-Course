import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Screen1.dart';

class Screen0 extends StatelessWidget {
  String? title;
  Screen0({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!),backgroundColor: Colors.amber,),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Goto Screen 1",style: TextStyle(fontSize: 30),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Screen1(title: "Gallery");
              }));
            },
          ),
        ),
      ),
    );
  }
}