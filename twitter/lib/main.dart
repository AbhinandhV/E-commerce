import 'package:flutter/material.dart';
import 'package:twitter/twitter/login.dart';
void main()
{
  runApp(twitter());
}
class twitter extends StatelessWidget {
  const twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
