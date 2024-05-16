import 'package:album/pages/frontpage.dart';
import 'package:album/pages/userpage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(album());
}
class album extends StatelessWidget {
  const album({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: froontpage(),
    );
  }
}
