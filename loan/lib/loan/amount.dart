import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,title: Text("HOME LOAN"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(110),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: ("user id"),border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                      labelText: ("AMOUNT"),border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: (){}, child: Text("SUBMIT")),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("BACK"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
