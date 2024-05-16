import 'package:flutter/material.dart';
import 'package:loan/loan/login.dart';

void main()
{
  runApp(loan());
}
class loan extends StatelessWidget {
  const loan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login()
    );
  }
}
