import 'package:flutter/material.dart';
import 'package:whatsapp/login.dart';
void main()
{
  runApp(whatsapp());
}
class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

