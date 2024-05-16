import 'package:calculator/calculator/great.dart';
import 'package:calculator/calculator/multiply.dart';
import 'package:calculator/calculator/small.dart';
import 'package:calculator/calculator/sub.dart';
import 'package:calculator/calculator/sum.dart';
import 'package:flutter/material.dart';
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("CALCULATOR"),),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue,Colors.black]

          )
        ),
        padding: EdgeInsets.all(110),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sum()));
            },child:Text("SUM")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>multiply()));
            }, child:Text("MULTIPLY")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>subtract()));
            }, child:Text("DIFFERENCE")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Great()));
            }, child:Text("GREATEST")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>small()));
            }, child:Text("SMALLEST")),
          ],
        ),
      ),
    );
  }
}

