
import 'package:booking/booking/book.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(booking());
}
class booking extends StatelessWidget {
  const booking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,title: Text("Booking.com"),),
      body: Container(
        padding: EdgeInsets.all(110),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "SEARCH CAR",border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>book()));
            }, child: Text("SEARCH"))
          ],
        ),
      ),
    ),);
  }
}
