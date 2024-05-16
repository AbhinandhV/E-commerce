import 'package:flutter/material.dart';
import 'package:postapp/postapp/login.dart';
void main()
{
  runApp(postapp());
}
class postapp extends StatelessWidget {
  const postapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
