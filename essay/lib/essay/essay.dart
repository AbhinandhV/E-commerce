import 'package:flutter/material.dart';

class poem extends StatelessWidget {
  const poem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,title: Text("POEM"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(110),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: ("CONTENT"),border: OutlineInputBorder()
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
