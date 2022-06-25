// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/HomeScreen.dart';

class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
      appBar: AppBar(title: Text("Tab Bar Demo")),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Container(
              // ignore: prefer_const_constructors
              child: TabBar(labelColor: Colors.black,
              // ignore: prefer_const_literals_to_create_immutables
              indicatorColor: Colors.blue, tabs: [
                Tab(child: Icon(Icons.camera_enhance,)),
                Tab(text: "Home",),
                Tab(text: "About",),
                Tab(text: "Services",),
                Tab(child: Icon(Icons.settings),)
              ],),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Center(
                      child: Text("Camera Screen"),
                    ),
                    Center(
                      child: HomeScreen(),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text("About Application",
                          style: TextStyle(fontSize: 30,color: Colors.green),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text("Hello My Name is Lokesh",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.justify,),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Text("Services Screen"),
                    ),
                    Center(
                      child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/6/6d/Windows_Settings_app_icon.png")),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    )
    );
  }
}