import 'package:flutter/material.dart';
import 'package:train/train/login.dart';
void main() {
  runApp(Train());
}

class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

