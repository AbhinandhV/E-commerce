import 'package:doctor/pages/models/services/service1.dart';
import 'package:flutter/material.dart';
class Add extends StatefulWidget {
  const Add({super.key});
  @override
  State<Add> createState() => _AddState();
}
class _AddState extends State<Add> {
  final TextEditingController name= TextEditingController();
  final TextEditingController Qualification= TextEditingController();
  final TextEditingController proofnumber= TextEditingController();
  final TextEditingController expertise= TextEditingController();
  final TextEditingController experience= TextEditingController();
  void insert()
  async
  {
    final response=await ViewList().Addoct(
        name.text,
        Qualification.text,
        proofnumber.text,
        expertise.text,
        experience.text);
    if(response["status"]=="success")
    {
      print("Successfull");
    }
    else
    {
      print("error");
    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "NAME",border: OutlineInputBorder()
                  ),
                  controller: name,
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "QUALIFICATION",border: OutlineInputBorder()
                  ),
                  controller: Qualification,
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "PROOFNUMBER",border: OutlineInputBorder()
                  ),
                  controller: proofnumber,
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "SPECIALISATION",border: OutlineInputBorder()
                  ),
                  controller: expertise,
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "EXPERIENCE",border: OutlineInputBorder(),
                  ),
                  controller: experience,
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed:insert
                    , child: Text("ADD"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}