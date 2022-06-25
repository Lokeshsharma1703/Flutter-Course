// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, camel_case_types

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class buttonsdemo extends StatelessWidget {
  const buttonsdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buttons Demo"),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ), onPressed: (){}, child: Text("Login",style: TextStyle(fontSize: 24),),),

                TextButton(onPressed:(){}, child: Text("Register",style: TextStyle(fontSize: 24),)),

                OutlinedButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(fontSize: 24),)),
                
                IconButton(onPressed: (){}, icon: Icon(Icons.alarm, color: Colors.blue, size: 50,))
                ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("Floating Action Button Clicked");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}