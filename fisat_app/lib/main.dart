import 'package:fisat_app/pages/login.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Login());
}
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Logins(),
    );
  }
}
