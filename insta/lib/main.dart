import 'package:flutter/material.dart';
import 'package:insta/login.dart';

void main()
{
  runApp(insta());
}
class insta extends StatelessWidget {
  const insta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
