import 'package:flutter/material.dart';
class sum extends StatefulWidget {
  const sum({super.key});

  @override
  State<sum> createState() => _sumState();
}

class _sumState extends State<sum> {
  String getnum1="0",getnum2="0",result="0";
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title:Text("SUM"),backgroundColor: Colors.green,),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              TextField(
                controller: num1,
                decoration:InputDecoration(labelText: "NUMBER 1",border:OutlineInputBorder() ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: num2,
                decoration:InputDecoration(labelText: "NUMBER 2",border:OutlineInputBorder() ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                getnum1=num1.text;
                getnum2=num1.text;
                int addresult=int.parse(getnum1)+int.parse(getnum2);
                setState(() {
                  result=addresult.toString();
                });

              }, child: Text("ADD")),
              TextField(decoration: InputDecoration(border: OutlineInputBorder()),),
              SizedBox(height: 20,),
              Text(result),
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
