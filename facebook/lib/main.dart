import 'package:facebook/facebook/login.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(facebook());
}
class facebook extends StatelessWidget {
  const facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
