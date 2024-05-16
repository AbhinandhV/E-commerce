 import 'package:flutter/material.dart';

class login extends StatefulWidget {
   const login({super.key});

   @override
   State<login> createState() => _loginState();
 }

 class _loginState extends State<login> {


   @override
   Widget build(BuildContext context) {


     return MaterialApp(

       home: Scaffold(
         body: Center(
           child: Container(
             child: Row(
               children: [
                 TextField(
                   decoration: InputDecoration(
                     labelText: "ENTER USERNAME",labelStyle: TextStyle(color: Colors.red),
                       border: OutlineInputBorder()
                   ),
                 ),
                 SizedBox(width: 20,),
                 TextField(
                   decoration: InputDecoration(
                       labelText: "ENTER PASSWORD",labelStyle: TextStyle(color: Colors.red),
                       border: OutlineInputBorder()
                   ),
                 ),
                 ElevatedButton(onPressed: (){}, child: Text("SUBMIT")),

               ],
             ),
           ),
         ),
       ),
     );
   }
 }
