// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListTileNavigatin.dart';

class Listtile extends StatelessWidget {
  const Listtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text("List Tile Demo"),),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Lokesh Sharma",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Deepak Sharma"),
            subtitle: Text("Tester"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Deepak Sharma",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rahul Yadav"),
            subtitle: Text("Full stack developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aman Kumar"),
            subtitle: Text("Backend developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    )
    );
  }
}