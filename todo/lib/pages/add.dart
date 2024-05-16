import 'package:flutter/material.dart';
import 'package:todo/pages/login.dart';
class userpgae extends StatelessWidget {
  const userpgae({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TO Do",style: TextStyle(fontSize: 30,),),
          backgroundColor: Colors.cyan,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "ENTER USER ID"),),
                    SizedBox(height: 30,),
                    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "ENTER ID"),),
                    SizedBox(height: 30,),
                    TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "TO DO"),),
                      SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child: Text("ADD")),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                }, child: Text("View"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
