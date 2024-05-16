import 'package:doctor/pages/frontpage.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(doctor());
}
class doctor extends StatelessWidget {
  const doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Frontpage(),
    );
  }
}
