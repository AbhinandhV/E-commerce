import 'package:essay/essay/essay.dart';
import 'package:essay/essay/poem.dart';
import 'package:flutter/material.dart';
class select extends StatelessWidget {
  const select({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,title: Text("AI"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>poem()));
              }, child: Text("POEM")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>story()));
              }, child: Text("STORY"))
            ],
          ),
        ),
      ),
    );
  }
}
