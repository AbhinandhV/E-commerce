import 'package:flutter/material.dart';

class edits extends StatelessWidget {
  const edits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text("Edit",style: TextStyle(color: Colors.green.withOpacity(0.4)),),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(50),
                child: Column(
                    children: [
                      TextField(decoration: InputDecoration(
                        labelText: "Movie_Name",
                        hintText: "Movie_Name",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      ElevatedButton(onPressed: (){}, child: Text("Edit")),
                      SizedBox(height:15),
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Back to login")),
                    ]
                ),
              ),
            )));
  }
}
