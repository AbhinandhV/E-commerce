import 'package:flutter/material.dart';
import 'package:librariyy/book.dart';

void main()
{
  runApp(book());
}
class book extends StatelessWidget {
  const book({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: books()
    );
  }
}
