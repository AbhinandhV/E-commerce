import 'package:flutter/material.dart';
import 'package:newcalc/calc/login.dart';
void main()
{
  runApp(calc());
}
class calc extends StatelessWidget {
  const calc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
