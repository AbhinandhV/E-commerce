

import 'package:flutter/material.dart';
import 'package:untitled/employee/register.dart';
class userpage extends StatelessWidget {
  const userpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyanAccent.withOpacity(0.5),title: Text("EMPLOYEE LOGIN"),),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white,Colors.black]
              )
          ),
          padding: EdgeInsets.all(75),
          child: Column(
            children: [
              Text("WELCOME"
              ),
              SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(labelText: "EMPLOYEE NAME",border: OutlineInputBorder()),
              ),
              SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(labelText: "EMPLOYEE CODE",border: OutlineInputBorder()),
              ),
              SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(labelText: "PASSWORD",border: OutlineInputBorder()),
              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
              }, child: Text("REGISTER"))
            ],
          ),
        ),
      ),

    );
  }
}
