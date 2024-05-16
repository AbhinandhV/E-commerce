import 'package:event/pages/addevent.dart';
import 'package:event/pages/services/service1.dart';
import 'package:event/pages/view.dart';
import 'package:flutter/material.dart';
class frontpage extends StatelessWidget {
  const frontpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewEvent()));
            }, child: Text("VIEW EVENT")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddEvent()));
            }, child: Text("ADD EVENT"))

          ],
        ),
      ),
    );
  }
}
