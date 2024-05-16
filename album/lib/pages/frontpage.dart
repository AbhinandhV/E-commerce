 import 'package:album/pages/userpage.dart';
import 'package:flutter/material.dart';

class froontpage extends StatelessWidget {
   const froontpage({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         body: Builder(
           builder: (context) {
             return Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                     image: NetworkImage("https://files.oyebesmartest.com/uploads/preview/smoke-png---smog-transparent-background-hd-(2)gqluwkubm2.jpg")
                 ,fit: BoxFit.cover)
                 ),
               padding: EdgeInsets.all(30),
               child: SingleChildScrollView(
                 child: Center(
                   child: Column(
                     children: [
                       SizedBox(height: 20,),
                       CircleAvatar(
                         radius: 75,
                         backgroundImage: NetworkImage("https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg"),

                       ),
                       SizedBox(height: 20,),
                       TextField(
                         decoration: InputDecoration(labelText: "ALBUM ID",labelStyle: TextStyle(color: Colors.white
                         ),border: OutlineInputBorder()
                   )
                              ),
                       SizedBox(height: 20,),
                       TextField(
                           decoration: InputDecoration(labelText: "ID",labelStyle: TextStyle(color: Colors.white
                           ),border: OutlineInputBorder()
                           )
                       ),
                       SizedBox(height: 20,),

                       TextField(
                           decoration: InputDecoration(labelText: "TITLE",labelStyle: TextStyle(color: Colors.white
                           ),border: OutlineInputBorder()
                           )
                       ),
                       SizedBox(height: 20,),

                       TextField(
                           decoration: InputDecoration(labelText: "URL",labelStyle: TextStyle(color: Colors.white
                           ),border: OutlineInputBorder()
                           )
                       ),
                       SizedBox(height: 20,),

                       TextField(
                           decoration: InputDecoration(labelText: "THUMBNAIL URL",labelStyle: TextStyle(color: Colors.white
                           ),border: OutlineInputBorder()
                           )
                       ),
                       SizedBox(height: 20,),
                       SizedBox(child: ElevatedButton(style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(),foregroundColor: Colors.white,backgroundColor: Colors.blueGrey
                       ),
                           onPressed: (){}, child: Text("SUBMIT"))),
                       SizedBox(height: 20,),
                       SizedBox(child: ElevatedButton(style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(),foregroundColor: Colors.white,backgroundColor: Colors.blueGrey
                       ),
                           onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>userpage()));
                           }, child: Text("VIEW ALBUM")))
                     ],
                   ),
                 ),
               ),
             );
           }
         ),
       ),
     );
   }
 }
