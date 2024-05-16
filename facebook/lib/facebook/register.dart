import 'package:flutter/material.dart';
 class register extends StatelessWidget {
   const register({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("WELCOME TO FACEBOOK",style: TextStyle(color: Colors.indigo,fontStyle: FontStyle.italic,fontSize:25),),
         ),
         body: SingleChildScrollView(
           child: Container(
             padding: EdgeInsets.all(10),
             child: Column(
               children: [
                 SizedBox(height: 40,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "First Name",
                       hintText: "first name"
                   ),
                 ),
                 SizedBox(height: 10,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Second Name",
                       hintText: "Second Name"
                   ),
                 ),
                 SizedBox(height: 10,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Date of Birth",
                       hintText: "dd/mm/yyyy"
                   ),
                 ),
                 SizedBox(height: 10,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Email Address",
                       hintText: "email address"
                   ),
                 ),
                 SizedBox(height: 10,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Gender",
                       hintText: "F/M/Others"
                   ),
                 ),
                 SizedBox(height: 10,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Password",
                       hintText: "Password"
                   ),
                 ),
                 SizedBox(height: 10,),
                 TextField(
                   decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Confirm Password",
                       hintText: "Re enter Password"
                   ),
                 ),
           
                 SizedBox(height: 15,),
                 SizedBox(
                   width: 350,
                   child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.blueAccent.withOpacity(0.99),
                           foregroundColor: Colors.white,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.zero
                           )
                       ),
                       onPressed: ()
                       {
           
                       },
                       child: Text("Register",style: TextStyle(fontSize: 15),)),
                 ),
                 SizedBox(height: 25,),
                 SizedBox(
                   width: 350,
                   child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.blueAccent.withOpacity(0.99),
                       ),
                       onPressed: ()
                       {
                         Navigator.pop(context);
           
                       },
                       child: Text("Already have an account ? Login")),
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
 }

