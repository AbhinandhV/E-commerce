import 'package:flutter/material.dart';
import 'package:untitled/employee/login.dart';
void main()
{
  runApp(login());
}
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: userpage()
    );
  }
}
