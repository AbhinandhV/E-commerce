import 'package:flutter/material.dart';
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  String result="0",getnum1="",getnum2=" ";
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.blue,
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: num1,
                decoration: InputDecoration(

                hintText: "NUMBER 1",labelText: "NUMBER 1",border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.number,
                controller: num2,
                decoration: InputDecoration(
                  hintText: "NUMBER 2",labelText: "NUMBER 2",border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                getnum1=num1.text;
                getnum2=num2.text;
                int addresult=int.parse(getnum1)+int.parse(getnum2);
                setState(() {
                  result=addresult.toString();
                });
              }, child: Text("ADD")
              ),
              Text(result,style: TextStyle(fontSize: 50),),
              ElevatedButton(onPressed: (){
                getnum1=num1.text;
                getnum2=num2.text;
                int addresult=int.parse(getnum1)-int.parse(getnum2);
                setState(() {
                  result=addresult.toString();
                });
              }, child: Text("DIFFERENCE")
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}
