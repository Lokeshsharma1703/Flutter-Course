// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_application_1/PizzaAppScreen.dart';
// import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:grouped_buttons_ns/grouped_buttons_ns.dart';

class PizzaApp extends StatefulWidget {
  const PizzaApp({Key? key}) : super(key: key);

  @override
  State<PizzaApp> createState() => _PizzaAppState();
}

class _PizzaAppState extends State<PizzaApp> {
  var _initialvalue = 0.0;
  bool _isPaid = false;
  bool _cod = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza App")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Select your Toppings",
                style: TextStyle(fontSize: 20),),
                CheckboxGroup(
                  // ignore: prefer_const_literals_to_create_immutables
                  labels: [
                    "Onion",
                    "Black Olive",
                    "Mushrooms",
                    "Green Paper",
                    "Corn"
                  ],
                  onSelected: (List<String> selected){
                    print(selected);
                  },
                  ),
                  Text("Select Pizza Size",
                    style: TextStyle(fontSize: 20),),
                  RadioButtonGroup(
                    labels: [
                      "Small",
                      "Medium",
                      "Large"
                    ],
                    onSelected: (String selected){
                      print(selected);
                    },),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text("Pizzas Quantity : ",
                          style: TextStyle(fontSize: 20),),
                        Slider(value: _initialvalue, 
                          onChanged: (newQuantity){
                            setState(() {
                              _initialvalue = newQuantity;
                            });
                            print("Pizza Quantity : $_initialvalue");
                          },
                          min: 0,
                          max: 10,
                          divisions: 10,
                          label: '$_initialvalue',),
                      ],
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text("Payment Status : ",
                        style: TextStyle(fontSize: 20),),
                      Switch(value: _isPaid,
                        onChanged: (bool status){
                          setState(() {
                            _isPaid = status;
                          });
                          print("Payment Status : $_isPaid");
                        }),
                      Text(_isPaid ? "Yes" : "No",
                        style: TextStyle(fontSize: 20),),
                    ],
                  )),
                  Padding(padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text("Go for COD : ",
                        style: TextStyle(fontSize: 22),),
                      Checkbox(value: _cod, 
                        onChanged: (b){
                          setState(() {
                            _cod = b!;
                          });
                        }),
                      Text(_cod ? "COD" : "Online",
                      style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return PizzaAppScreen();
                    }));
                  },
                    child: Text("Order Preview",
                      style: TextStyle(fontSize: 20),))
              ],
            ),
          ],
          ),
        ),
      );
  }
}