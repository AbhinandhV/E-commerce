import 'package:flutter/material.dart';
import 'package:insta/instagram/userpage.dart';
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(backgroundColor: Colors.black,) ,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(90),
            child: Column(
              children: [

                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage("https://img.freepik.com/premium-photo/round-instagram-logo-isolated-white-background_469489-1037.jpg"),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "USERNAME",hintText: "ENTER THE USERNAME",border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(

                  child: TextField(
                    decoration: InputDecoration(labelText: "PASSWORD",hintText: "ENTER THE PASSWORD",border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(4),
                        )
                      ),
                        onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>userpage()));
                        }, child: Text("LOGIN"))),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
