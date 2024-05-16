import 'package:flutter/material.dart';

class books extends StatelessWidget {
  const books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyan,title: Text("FISAT LIBRARY"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: "SEARCH",labelText: "TYPE NAME",border: OutlineInputBorder()),
              ),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: (){}, child: Text("SEARCH"))
            ],
          ),
        ),
      )
    );
  }
}
