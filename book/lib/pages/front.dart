
import 'package:book/pages/add.dart';
import 'package:book/pages/views.dart';
import 'package:flutter/material.dart';

class frontpage extends StatefulWidget {
  const frontpage({super.key});

  @override
  State<frontpage> createState() => _frontpageState();
}

class _frontpageState extends State<frontpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddBook()));
            }, child:Text("ADD BOOK")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Views()));
            }, child: Text("VIEW BOOK"))
          ],
        ),
      ),
    );
  }
}
