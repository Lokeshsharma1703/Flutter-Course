// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Assignment18.dart';
import 'package:flutter_application_1/BottomNavigationBar.dart';
import 'package:flutter_application_1/DataTableDemo.dart';
import 'package:flutter_application_1/GoogleSearchEngine.dart';
import 'package:flutter_application_1/ListTile.dart';
import 'package:flutter_application_1/MyTabBar.dart';
import 'package:flutter_application_1/PizzaApp.dart';
import 'package:flutter_application_1/SI_calculator.dart';
import 'package:flutter_application_1/Screens/HomeScreen.dart';
import 'package:flutter_application_1/Screens/Screen1.dart';
import 'package:flutter_application_1/Screens/Screen2.dart';
import 'package:flutter_application_1/SelectableDemo.dart';
import 'package:flutter_application_1/TabBardemo.dart';
import 'package:flutter_application_1/menusdemo.dart';
import 'package:flutter_application_1/TextWidgetDemo.dart';
import 'package:flutter_application_1/MyApp.dart';
import 'package:flutter_application_1/buttonsdemo.dart';
import 'package:flutter_application_1/Screens/Screen0.dart';
import 'package:flutter_application_1/DrawerDemo.dart';


void main() {
  //runApp(MyApp());
  //runApp(buttonsdemo());
  //runApp(Test());
  //runApp(Menudemo());
  // runApp(MaterialApp(
  //   home: HomeScreen(),
  //   routes: {
  //     'S0':(context) => Screen0(title: "Setting"),
  //     'S1':(context) => Screen1(title: "Gallery"),
  //     'S2':(context) => Screen2(title: "About phone")
  //   },
  // ));
  //runApp(BottomNavigation());
  //runApp(Listtile());
  //runApp(tabbar());
  // runApp(MaterialApp(
  //   home: tabbardemo()));
  //runApp(Drawerdemo());
  //runApp(DataTableDemo());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: DataTableDemo(),
    // home: SelectableDemo(),
    // home: WhatsappUI(),
    // home: GoogleSearchEngine(),
    // home: TextFieldDemo(),
    home: SI_Calculator(),
    // home: PizzaApp(),
  ));
}

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     int x=5;
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Center(
//             child: Container(
//               child: ElevatedButton(
//                 onPressed: (){
//                   setState(() {
//                     x=20;
//                   });
//                   if(x>10){
//                     print("Hello, this is an If statement");
//                   }
//                   else{
//                     print("Hello");
//                   }
//                 },
//                 child: Text("Button"),
//               ),
//             ),
//           ),
//         )
//       ),
//     );
//   }}