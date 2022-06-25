// ignore_for_file: camel_case_types, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';

class SI_Calculator extends StatefulWidget {
  const SI_Calculator({Key? key}) : super(key: key);

  @override
  State<SI_Calculator> createState() => _SI_CalculatorState();
}

class _SI_CalculatorState extends State<SI_Calculator> {
  String result = "";
  TextEditingController _principalcontroller = TextEditingController();
  TextEditingController _ratecontroller = TextEditingController();
  TextEditingController _termcontroller = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("SI Calculator"),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Image(image: AssetImage("images/notes.png")),
              TextField(
                controller: _principalcontroller,
                decoration: InputDecoration(
                  labelText: "Principal",
                  hintText: "Enter Principal",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                keyboardType: TextInputType.number
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _ratecontroller,
                decoration: InputDecoration(
                  labelText: "Rate",
                  hintText: "Enter Rate",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                keyboardType: TextInputType.number
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _termcontroller,
                decoration: InputDecoration(
                  labelText: "Term",
                  hintText: "Enter Term",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                keyboardType: TextInputType.number
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(value: this.value, 
                  onChanged: (newvalue){
                    setState(() {
                      this.value = newvalue!;
                    });
                  }),
                Container(
                  child: Text("Are you agree with terms",
                  style: TextStyle(fontSize: 18),),
                ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 175,
                    child: ElevatedButton(onPressed: value ? (){
                      setState(() {
                        this.result = _getEffectiveAmount();
                      });
                    }:null,
                    child: Text("Calculate",style: TextStyle(fontSize: 25),),),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 175,
                    child: ElevatedButton(onPressed: (){
                      _reset();
                    }, 
                    child: Text("Reset",style: TextStyle(fontSize: 25),),),
                  ),
                ]
              ),
              SizedBox(
                    child: Text(result,
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  )
           ],
          ),
        ),
      ),
    );
  }

String _getEffectiveAmount(){
  double principal = double.parse(_principalcontroller.text);
  double rate = double.parse(_ratecontroller.text);
  double term = double.parse(_termcontroller.text);
  double res = (principal*rate*term)/100;
  return "After ${term} years, Your investment will be worth ${res} Rupees";
}

void _reset(){
  _principalcontroller.text = "";
  _ratecontroller.text = "";
  _termcontroller.text = "";
  result = "";
  value = false;
}
}