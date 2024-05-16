import 'package:flutter/material.dart';
import 'package:train/train/regis.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("TRAIN APP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://lh3.googleusercontent.com/iZxrTjgh62FVv6DvwEqhOGn7PpLXcFBaiQw6c-Y1HtwwI42fqyV669pE8nYdWfsGAm4D"),
              radius: 50,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 5,),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                  }, child: Text("New!...Register Now")),
            ),
          ],
        ),
      ),
    );
  }
}