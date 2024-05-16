import 'package:flutter/material.dart';
import 'package:movie/edit.dart';
import 'package:movie/movie/delete.dart';
import 'package:movie/movie2.dart';
import 'package:movie/search.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Home",style: TextStyle(color: Colors.black45.withOpacity(0.8)),),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,Colors.lightGreen
            ]
          )
        ),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
            }, child: Text("add")),
            SizedBox(height:15),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>edits()));
            }, child: Text("Edit")),
            SizedBox(height:15),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
            }, child: Text("Search")),
            SizedBox(height:15),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>edit()));
            }, child: Text("Delete")),
          ],
        ),
      ),
    );
  }
}