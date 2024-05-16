import 'package:flutter/material.dart';
import 'package:phone/contacts/cantact.dart';

void main() {
  runApp(const phone());
}
class phone extends StatelessWidget {
  const phone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: first(),
    );
  }
}


