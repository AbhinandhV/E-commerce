import 'package:flutter/material.dart';
import 'package:song/search.dart';

class songs extends StatelessWidget {
  const songs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Colors.green,title: Text("SPOTIFY"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(110),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "SEARCH",hintText: "SEARCH MUSIC"
                  ),style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                    ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                        }, child: Text("SEARCH")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
