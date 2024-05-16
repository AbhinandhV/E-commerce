import 'package:flutter/material.dart';

class multiply extends StatefulWidget {
  const multiply({super.key});

  @override
  State<multiply> createState() => _multiplyState();
}

class _multiplyState extends State<multiply> {
  String getnum1="0",getnum2="0",result="0";
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purpleAccent,title: Text("MULTIPLICATION"),),
        body: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "NUMBER 1",border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "NUMBER 2",border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed:(){
                getnum1=num1.text;
                getnum2=num2.text;
                int multiresult=int.parse(getnum1)*int.parse(getnum2);
                setState(() {
                  result=multiresult.toString();
                });
              }, child: Text("MULTIPLY")),
              TextField(controller: TextEditingController(text: result),
                decoration: InputDecoration(border: OutlineInputBorder()),),
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
