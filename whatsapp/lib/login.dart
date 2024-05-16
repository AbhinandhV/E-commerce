import 'package:flutter/material.dart';
import 'package:whatsapp/user.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/640px-WhatsApp_icon.png"),
              SizedBox(height: 20,),
              Text("Welcome To Whatsapp",style: TextStyle(fontSize: 20),),
              SizedBox(height: 100,),
              SizedBox(
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                  ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));
                      }, child: Text("->")))
            ],
          ),
        ),
      ),
    );
  }
}
