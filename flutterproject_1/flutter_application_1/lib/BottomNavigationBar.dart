// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/BottomSamplePage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedItem = 0;
  var pages = [Home(), About(), Service(), Setting()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation")),
      body: Center(
        child: Container(
          child: pages[selectedItem]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_rounded), label: "About"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services), label: "Services"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: "Setting"
            )
          
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        fixedColor: Colors.white,
        currentIndex: selectedItem,
        onTap: (setValue){
          setState(() {
            selectedItem = setValue;
          });
        },
      ),
    )
    );
  }
}