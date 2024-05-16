import 'package:flutter/material.dart';

class subtract extends StatefulWidget {
  const subtract({super.key});

  @override
  State<subtract> createState() => _subtractState();
}

class _subtractState extends State<subtract> {
  String getnum1="0",getnum2="0",result="0";
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,title: Text("SUBTRACT"),),
        body: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              TextField(
                controller: num1,
                decoration: InputDecoration(
                  labelText: "NUMBER 1",border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                    labelText: "NUMBER 2",border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed:(){
                getnum1=num1.text;
                getnum2=num2.text;
                int subresult=int.parse(getnum1)-int.parse(getnum2);
                setState(() {
                  result=subresult.toString();
                });
              }, child: Text("DIFFERENCE")),
              TextField(
                controller: TextEditingController(
                  text: result
                ),
                decoration: InputDecoration(border: OutlineInputBorder(),)),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("BACK"))
            ],
          ),
        ),
      ),
    );
  }
}
