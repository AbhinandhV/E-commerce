import 'package:event/pages/services/service1.dart';
import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  TextEditingController name=new TextEditingController();
  TextEditingController date=new TextEditingController();
  TextEditingController venue=new TextEditingController();
  TextEditingController description=new TextEditingController();
  void Add()
  async
  {
    final response=await ViewEvents().sendata(name.text,
        date.text,
        venue.text,
        description.text);
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
        body:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
                TextField(
                  decoration: InputDecoration(
                      labelText: "EVENT-NAME" ,border: OutlineInputBorder()
                  ),
                  controller: name,),
                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(
                    labelText: "EVENT DATE" ,border: OutlineInputBorder()
                ),
                  controller: date,),
                SizedBox(height: 20,),
          
                TextField(decoration: InputDecoration(
                    labelText: "EVENT PLACE" ,border: OutlineInputBorder()
                ),
                  controller: venue,),
                SizedBox(height: 20,),
          
                TextField(decoration: InputDecoration(
                    labelText: "DESCRIPTION" ,border: OutlineInputBorder()
                ),
                  controller: description,),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: Add,
                    child: Text("SUBMIT"))
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
