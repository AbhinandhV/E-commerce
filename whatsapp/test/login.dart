import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(
            children: [
              Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/640px-WhatsApp_icon.png"),
              SizedBox(height: 20,),
              Text("Welcome To Whatsapp"),
              SizedBox(height: 100,),
              SizedBox(
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white
                  ),
                      onPressed: (){}, child: Text("->")))
            ],
          ),
        ),
      ),
    );
  }
}
