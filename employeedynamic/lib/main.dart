import 'package:employeedynamic/emp/signup.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(login());
}
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: emp(),
    );
  }
}
