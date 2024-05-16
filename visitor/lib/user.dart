
import 'package:flutter/material.dart';
import 'package:visitor/pages/add.dart';
import 'package:visitor/pages/view.dart';

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(100),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
                }, child:Text("ADD") ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>views()));
                }, child:Text("VIEW") )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
