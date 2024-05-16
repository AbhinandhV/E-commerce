import 'package:flutter/material.dart';
import 'package:twitter/twitter/user.dart';
class login extends StatelessWidget {
  const login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(70),
          child: Column(
            children:[
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://freelogopng.com/images/all_img/1690643591twitter-x-logo-png.png"),
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 1000,
                  child: TextField(decoration: InputDecoration(labelText: "USERNAME",border: OutlineInputBorder(),),)),
              SizedBox(height: 10,),
              TextField(decoration: InputDecoration(labelText: "PASSWORD",border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo.withOpacity(1),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>userpage()));
                      }, child: Text("LOGIN"))
              ),
              SizedBox(height: 150,),
            ],
          ),
        ),
      ),
    );
  }
}
