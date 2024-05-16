 import 'package:flutter/material.dart';
import 'package:visitor/pages/models/services/service1.dart';

class add extends StatefulWidget {
   const add({super.key});

   @override
   State<add> createState() => _addState();
 }

 class _addState extends State<add> {
   String vistorName="";
   String vistorPhone="";
   String vistorAadhar="";
   String vistorPlace="";
   String PurposeOfVisit="";
   TextEditingController name1=new TextEditingController();
   TextEditingController place1=new TextEditingController();
   TextEditingController phoneno1=new TextEditingController();
   TextEditingController Aadhaar1=new TextEditingController();
   TextEditingController purpose1=new TextEditingController();
   void SendValue()
   async
   {
     vistorName= name1.text;
     vistorPhone=place1.text;
     vistorAadhar=phoneno1.text;
   vistorPlace= Aadhaar1.text;
     PurposeOfVisit=purpose1.text;
     final response= await view().sendata(vistorName,vistorPhone,vistorAadhar, vistorPlace,PurposeOfVisit);
     print(response);
     if(response["status"]=="success")
       {
         print("successfull");
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
         appBar: AppBar(

         ),
         body: SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.all(50),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
           
                 TextField(
                   decoration: InputDecoration(
                   labelText: "NAME" ,border: OutlineInputBorder()
                 ),
                 controller: name1,),
                 SizedBox(height: 20,),
                 TextField(decoration: InputDecoration(
                     labelText: "PHONE NUMBER" ,border: OutlineInputBorder()
                 ),
                 controller: phoneno1,),
                 SizedBox(height: 20,),
           
                 TextField(decoration: InputDecoration(
                     labelText: "PLACE" ,border: OutlineInputBorder()
                 ),
                 controller:  place1,),
                 SizedBox(height: 20,),
           
                 TextField(decoration: InputDecoration(
                     labelText: "Aadhaar" ,border: OutlineInputBorder()
                 ),
                 controller: Aadhaar1,),
                 SizedBox(height: 20,),
           
                 TextField(decoration: InputDecoration(
                     labelText: "PURPOSE" ,border: OutlineInputBorder()
                 ),
                 controller: purpose1,),
                 SizedBox(height: 20,),
                 ElevatedButton(onPressed: SendValue,
                     child: Text("SUBMIT"))
               ],
             ),
           ),
         ),
       ),
     );
   }
 }
