// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _securetext = true;
  String? _nameerror = null;
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              TextField(
                maxLength: 20,
                controller: _nameController,
                decoration: InputDecoration(
                  errorText: _nameerror,
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  labelStyle: TextStyle(fontSize: 30, color: Colors.red),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                  labelText: "Mobile",
                  hintText: "Enter your mobile no.",
                  labelStyle: TextStyle(fontSize: 30, color: Colors.red),
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: "Description",
                  hintText: "Enter your Address",
                  labelStyle: TextStyle(fontSize: 30, color: Colors.red),
                  border: InputBorder.none,
                  fillColor: Colors.black12,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  labelStyle: TextStyle(fontSize: 30, color: Colors.red),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  fillColor: Colors.black12,
                  // icon: Icon(Icons.remove_red_eye),
                  // prefixIcon: Icon(Icons.remove_red_eye),
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _securetext = !_securetext;
                          });
                        },
                        icon: Icon(_securetext?Icons.remove_red_eye:Icons.security,
                        color: Colors.blue, 
                        size: 30,
                      ),
                    )
                ),
                obscureText: _securetext,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  if(_nameController.text.length < 3)
                    _nameerror = "Enter at least 3 character";
                  else
                    _nameerror = null;
                });
                print("Name : "+_nameController.text);
              }, 
              child: Text("Submit"))
            ],
          ),
        )
      ),
    );
  }
}