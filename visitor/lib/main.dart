import 'package:flutter/material.dart';
import 'package:visitor/user.dart';

void main()
{
  runApp(visitor());
}
class visitor extends StatelessWidget {
  const visitor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: user(),
    );
  }
}
