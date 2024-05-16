import 'package:flutter/material.dart';
class Great extends StatefulWidget {
  const Great({super.key});

  @override
  State<Great> createState() => _GreatState();
}

class _GreatState extends State<Great> {
  String getnum1="0",getnum2="0",result="none";
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.indigo,title: Text("GREATEST"),),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(110),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: num1,
                  decoration: InputDecoration(labelText: "NUMBER 1",border: OutlineInputBorder()),
                ),
                SizedBox(height: 20,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: num2,
                  decoration: InputDecoration(labelText: "NUMBER 1",border: OutlineInputBorder()),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  getnum1=num1.text;
                  getnum2=num2.text;
                 int number= int.parse(getnum1);
                  int numbers=int.parse(getnum2);
                  setState(() {
                    if(number > numbers)
                      {
                        result=number.toString();
                      }
                    else{
                      result=numbers.toString();
                    }
                  });
                }, child: Text("GREATEST")),
                SizedBox(height: 20,),
                TextField(
                  controller: TextEditingController(text: result),
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("BACK"),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
