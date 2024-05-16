import 'package:flutter/material.dart';
import 'package:movie/movie1.dart';

void main() {
  runApp(movie());
}
class movie extends StatelessWidget {
  const movie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:homepage()
    );
  }
}