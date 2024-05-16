import 'package:flutter/material.dart';

class add extends StatelessWidget {
  const add({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text("Register",style: TextStyle(color: Colors.green.withOpacity(0.4)),),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(100),
                child: Column(
                    children: [
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Movie_Name",
                        hintText: "Movie_Name",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Descritption",
                        hintText: "Description",
                        border: OutlineInputBorder(),
                      )
                      ),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Actor",
                        hintText: "Actor",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Actress",
                        hintText: "Actress",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Director",
                        hintText: "Director",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Producer",
                        hintText: "Producer",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Distributor",
                        hintText: "Distributor",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      TextField(decoration: InputDecoration(
                        labelText: "Release_Year",
                        hintText: "Release_year",
                        border: OutlineInputBorder(),
                      ),),
                      SizedBox(height:15),
                      ElevatedButton(onPressed: (){}, child: Text("Add")),
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
