import 'package:dashboard/dash/login.dart';
import 'package:flutter/material.dart';
 void main()
 {
   runApp(dash());
 }
 class dash extends StatelessWidget {
   const dash({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: login(),
     );
   }
 }
