import 'package:calculator/calculator/login.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(frontpage());
}
class frontpage extends StatelessWidget {
  const frontpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
