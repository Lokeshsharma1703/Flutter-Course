// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Menudemo extends StatefulWidget {
  const Menudemo({Key? key}) : super(key: key);

  @override
  State<Menudemo> createState() => _MenudemoState();
}

class _MenudemoState extends State<Menudemo> {
  var cities = ["Delhi", "Mumbai", "Kolkata", "Chandigarh"];
  var defaultcity = "Delhi";
  var choices = ["Inbox", "Sent items", "Junk-mails", "SignOut"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menus Demo"),
          actions: [
            IconButton(onPressed: (){print("Helped icon clicked");}, icon: Icon(Icons.help)),
            TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 20),)),
            PopupMenuButton(
              onSelected: (String? newitem){print(newitem);},
              itemBuilder: (BuildContext Context){
              return choices.map((String mychoices){
                return PopupMenuItem(child: Text(mychoices),value: mychoices,);
              }).toList();
            })
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical:20),
                child: Text("Dropdown Menu", style: TextStyle(fontSize: 30, color: Colors.blue),)),
                DropdownButton(items: cities.map((String items){
                  return DropdownMenuItem(child: Text(items,
                  style: TextStyle(fontSize: 28,
                  color: (defaultcity==items)?Colors.red : Colors.black),
                  ),value: items,);
                }).toList(),
                onChanged: (String? newitem){
                  setState(() {
                    defaultcity = newitem!;
                  });
              }, value: defaultcity,)
          ]),
        ),
      ),
    );
  }
}