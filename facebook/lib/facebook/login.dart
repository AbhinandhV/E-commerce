import 'package:facebook/facebook/register.dart';
import 'package:facebook/facebook/user.dart';
import 'package:facebook/facebook/user2.dart';
import 'package:flutter/material.dart';
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
                backgroundImage: NetworkImage("https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/facebook-round-color-icon.png"),
              ),
              SizedBox(height: 20,),
            Image.network(
              "https://blog.logomyway.com/wp-content/uploads/2018/06/facebook-logo.jpg",width: double.infinity,height:100,
            ),
              SizedBox(height: 10,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Userpage()));
                      }, child: Text("LOGIN"))
              ),
              SizedBox(height: 150,),
              SizedBox(
                width: 400,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        )
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                  }, child: Text("CREATE ACCOUNT")))
            ],
          ),
        ),
      ),
    );
  }
}
