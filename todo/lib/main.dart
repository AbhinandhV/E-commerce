import 'package:flutter/material.dart';
import 'package:todo/pages/add.dart';
void main()
{
  runApp(todo());
}
class todo extends StatelessWidget {
  const todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: userpgae(),
    );
  }
}
