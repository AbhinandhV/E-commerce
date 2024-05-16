import 'package:flutter/material.dart';
class small extends StatefulWidget {
  const small({super.key});

  @override
  State<small> createState() => _smallState();
}

class _smallState extends State<small> {
  String result="0",getnum1="0",getnum2="0";
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,title: Text("SMALLEST"),),
        body: Container(
          padding: EdgeInsets.all(110),
          child: Column(
            children: [
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "NUMBER 1",border: OutlineInputBorder()),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "NUMBER 2",border: OutlineInputBorder()),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                 getnum1 = num1.text;
                 getnum2 = num2.text;
                setState(() {
                  if(int.parse(getnum1) < int.parse(getnum2))
                    {
                      result=getnum1.toString();
                    }
                  else
                    {
                    result=getnum2.toString();
                  }
                });

              }, child: Text("SMALLEST")),
              TextField(
                controller: TextEditingController(text: result),
                decoration: InputDecoration(
                  border: OutlineInputBorder()),),
              SizedBox(height: 20,),
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
