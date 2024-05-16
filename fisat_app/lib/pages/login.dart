import 'package:fisat_app/pages/register.dart';
import 'package:flutter/material.dart';

class Logins extends StatelessWidget {
  const Logins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Container(
        padding: EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(decoration: InputDecoration(labelText: "USERNAME",border: OutlineInputBorder()),),
            SizedBox(height: 30,),
            TextField(decoration: InputDecoration(labelText: "PASSWORD",border: OutlineInputBorder()),),
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
                    }, child: Text("LOGIN"))
            ),
            SizedBox(height: 40,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                    }, child: Text("GO TO REGISTER"))
            ),

          ],
        ),
      ),
    );
  }
}