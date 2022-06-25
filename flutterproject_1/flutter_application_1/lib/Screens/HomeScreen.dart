import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'S0');
            }, child: Text("Screen 0")),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'S1');
            }, child: Text("Screen 1")),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'S2');
            }, child: Text("Screen 2")),
          )
        ],
      ),
    );
  }
}