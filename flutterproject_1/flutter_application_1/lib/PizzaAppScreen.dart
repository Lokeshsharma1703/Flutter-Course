// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PizzaAppScreen extends StatelessWidget {
  PizzaAppScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza App")),
      body: Padding(padding: const EdgeInsets.all(10.0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Toppings : ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
                ),),
                Text("Onion, Mushrooms",style: TextStyle(fontSize: 20),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Pizza Size : ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
                ),),
                Text("Large",style: TextStyle(fontSize: 20),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Pizza Quantity : ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
                ),),
                Text("5.0",style: TextStyle(fontSize: 20),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Payment Status : ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
                ),),
              Text("Done",style: TextStyle(fontSize: 20),)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Payment Mode : ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
                ),),
                Text("Online",style: TextStyle(fontSize: 20),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 160,
                child: ElevatedButton(
                onPressed: (){
                  print("Order Placed");
                },
                child: Text("Confirm Order",
                style: TextStyle(fontSize: 20),),
                ),
              ),
              SizedBox(
                width: 160,
                child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Cancel",
                style: TextStyle(fontSize: 20),)),
              )
            ],
          )
        ],
      ),
      )
    );
  }
}