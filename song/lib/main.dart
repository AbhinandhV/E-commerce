import 'package:flutter/material.dart';
import 'package:song/login.dart';
import 'package:song/search.dart';
void main()
{
  runApp(song());
}
class song extends StatelessWidget {
  const song({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: songs(),
    );
  }
}
