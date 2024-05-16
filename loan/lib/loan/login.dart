import 'package:flutter/material.dart';
import 'package:loan/loan/amount.dart';
import 'package:loan/loan/vehicle.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,title: Text("FEDERAL BANK"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>vehicle()));
              }, child: Text("VEHICLE LOAN")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
              }, child: Text("HOME LOAN"))
            ],
          ),
        ),
      ),
    );
  }
}
