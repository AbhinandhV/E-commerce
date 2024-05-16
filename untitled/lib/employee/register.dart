import 'package:flutter/material.dart';
class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal,title: Text("REGISTER"),),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white,Colors.black]
              )
            ),
            padding: EdgeInsets.all(110),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "NAME"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "EMPLOYEE CODE"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "PHONE NUMBER"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "ADDRESS"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "PINCODE"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "SALARY"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "COMPANY EMAIL"),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(labelText: "QUALIFICATION"),
                ),
                SizedBox(height: 15,),
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
                        onPressed: (){}, child: Text("REGISTER"))
                ),

                SizedBox(height: 15,),
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
                        onPressed: (){}, child: Text("LOGIN"))
                ),
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
