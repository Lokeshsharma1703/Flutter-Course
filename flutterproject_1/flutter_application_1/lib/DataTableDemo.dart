// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DataTableDemo extends StatelessWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("DataTable Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Participants Record",
              style: TextStyle(fontSize: 24, color: Colors.blue),),
              // ignore: prefer_const_literals_to_create_immutables
              DataTable(columns: [
                DataColumn(label: Text("Roll No."),),
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Branch"))
              ], rows: [
                DataRow(cells: [
                  DataCell(Text("101")),
                  DataCell(Text("Lokesh")),
                  DataCell(Text("CS"))
                ]),
                DataRow(cells: [
                  DataCell(Text("102")),
                  DataCell(Text("Aman")),
                  DataCell(Text("CSE"))
                ])
              ])
            ],
          ),
        ),
      ),
    );
  }
}