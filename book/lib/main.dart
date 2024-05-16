import 'package:book/pages/front.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(book());
}
class book extends StatelessWidget {
  const book({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: frontpage(),
    );
  }
}
