//Whatsapp UI
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListTileNavigatin.dart';

class WhatsappUI extends StatelessWidget {
  var menu = ["New Group", "New broadcast", "Linked Devices", "Starred messages", "Payments", "Setting"];
  WhatsappUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("YoWhatsApp"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: (){
            print("Search Bar Opened");
          }, icon: Icon(Icons.search)),
          PopupMenuButton(
            onSelected: (String? newItem){print(newItem);},
            itemBuilder: (BuildContext context){
              return menu.map((String mychoices){
                return PopupMenuItem(child: Text(mychoices), value: mychoices,);
              }).toList();
            },
          )
        ],
        // ignore: prefer_const_constructors
        bottom: TabBar(
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt)
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
        ),
        body: TabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Text("Camera",
              style: TextStyle(fontSize: 30, color: Colors.teal),),
            ),
            Center(
              child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: Image(image: AssetImage("images/Profile.png",),height: 50,),
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
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Rahul Yadav",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aman Kumar"),
            subtitle: Text("Backend developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Aman Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Vaseem Khan"),
            subtitle: Text("Tester"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Vaseem Khan",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Prateek Kumar"),
            subtitle: Text("Designer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Prateek Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Priyansh Kushwah"),
            subtitle: Text("Software Engineer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Priyansh Kushwah",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Shruti Agrawal"),
            subtitle: Text("Python Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Shruti Agrawal",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ritesh Mishra"),
            subtitle: Text("Manager"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Ritesh Mishra",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sumit Kumar"),
            subtitle: Text("UI Designer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Sumit Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Gaurav Verma"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Gaurav Verma",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Amit kumar"),
            subtitle: Text("Frontend Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Amit Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Rishabh Kulshrestha"),
            subtitle: Text("Java Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Rishabh Kulshrestha",);
              }));
            },
          ),
        ],
      ),
            ),
            Center(
              child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
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
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Rahul Yadav",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aman Kumar"),
            subtitle: Text("Backend developer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Aman Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Vaseem Khan"),
            subtitle: Text("Tester"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Vaseem Khan",);
              }));
            },
          ),
          
        ],
      ),
            ),
            Center(
              child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ListTile(
            leading: Icon(Icons.videocam),
            title: Text("Lokesh Sharma"),
            subtitle: Text("Developer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Lokesh Sharma",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Deepak Sharma"),
            subtitle: Text("Tester"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Deepak Sharma",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Rahul Yadav"),
            subtitle: Text("Full stack developer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Rahul Yadav",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.videocam),
            title: Text("Aman Kumar"),
            subtitle: Text("Backend developer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Aman Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Vaseem Khan"),
            subtitle: Text("Tester"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Vaseem Khan",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.videocam),
            title: Text("Prateek Kumar"),
            subtitle: Text("Designer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Prateek Kumar",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Priyansh Kushwah"),
            subtitle: Text("Software Engineer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Priyansh Kushwah",);
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Shruti Agrawal"),
            subtitle: Text("Python Developer"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ListtileNavigation(title: "Shruti Agrawal",);
              }));
            },
          ),
        ],
      ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          print("Floating Button Clicked");
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),),
      ),
    );
  }
}