import 'package:flutter/material.dart';
import 'package:photo/pages/addphoto.dart';

void main()
{
  runApp(photo());
}
class photo extends StatelessWidget {
  const photo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: addphoto(),
    );
  }
}
