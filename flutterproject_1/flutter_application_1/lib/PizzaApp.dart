// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'dart:html';

import 'package:flutter/cupertino.dart';
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
  String pizzatoppings = "";
  String size = "";
  var _initialvalue = 0.0;
  bool _isPaid = false;
  bool _cod = false;

  DateTime today = DateTime.now();
  TimeOfDay todayTime =  TimeOfDay.now();

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
                    setState(() {
                      pizzatoppings = selected.toString();
                    });
                  },
                  ),
                  Text("Select Pizza Size",
                    style: TextStyle(fontSize: 20),),
                  RadioButtonGroup(
                    // ignore: prefer_const_literals_to_create_immutables
                    labels: [
                      "Small",
                      "Medium",
                      "Large"
                    ],
                    onSelected: (String selected){
                      setState(() {
                        size = selected;
                      });
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
                  Padding(padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text("Select Delivery Date : ",
                        style: TextStyle(fontSize: 22),),
                        IconButton(onPressed: (){
                          selectDate(context);
                        },
                        icon: Icon(Icons.date_range)),
                        Text('${today.day}-${today.month}-${today.year}',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),)
                    ],
                  ),
                  ),
                  Padding(padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text("Select Delivery Time : ",
                        style: TextStyle(fontSize: 22),),
                        IconButton(onPressed: (){
                          selectTime(context);
                        },
                        icon: Icon(Icons.access_time)),
                        Text("${todayTime.hour} : ${todayTime.minute}",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),)
                    ],
                  ),
                  ),
                  ElevatedButton(onPressed: (){
                    showPreview(context);
                  },
                    child: Text("Preview Order",
                      style: TextStyle(fontSize: 20),))
              ],
            ),
          ],
          ),
        ),
      );
  }

  void selectDate(BuildContext context) async{
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: DateTime(2000), 
      lastDate: DateTime(2025));

    print(today);
    if(pickedDate!=null && pickedDate!=today){
      setState(() {
        today = pickedDate;
      });
    }
  }

  void selectTime(BuildContext context) async{
    TimeOfDay? pickedTime =  await showTimePicker(
      context: context, 
      initialTime: todayTime,);
    setState(() {
      todayTime = pickedTime!;
    });
  }

  void showPreview(BuildContext context){
    var alertDialog =  CupertinoAlertDialog(
      title: Text("Pizza Order Status",
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 28
        ),),
      content: Text(
        "Toppings : $pizzatoppings\nPizza Size : $size\nPizza Quantity : $_initialvalue\nBill : \nDelivery Date : ${today.day}-${today.month}-${today.year}\nDelivery Time : ${todayTime.hour} : ${todayTime.minute}",
        style: TextStyle(fontSize: 18),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PizzaAppScreen();
              }));
            }, child: Text("Pay")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Change Order"))
          ],
        )
      ],
    );
    showDialog(context: context,
      builder: (context){
        return alertDialog;
      });
  }
}