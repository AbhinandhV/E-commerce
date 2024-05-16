import 'package:flutter/material.dart';
import 'package:telegram/telegram/login.dart';
void main()
{
  runApp(telegram());
}
class telegram extends StatelessWidget {
  const telegram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: first(),
    );
  }
}
