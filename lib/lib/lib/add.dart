import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("LibraryApp"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Book Title",
                      labelText: "Enter Book Title",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Author",
                      labelText: "Enter Author Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Description",
                      labelText: "Enter Description",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Price",
                      labelText: "Enter Price",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Submit")),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Back To Menu")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}