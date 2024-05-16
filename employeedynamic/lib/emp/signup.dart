import 'package:employeedynamic/emp/edit.dart';
import 'package:flutter/material.dart';
class emp extends StatelessWidget {
  const emp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("EMPLOYEE APP"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(100),
            child: Column(
              children: [
                SizedBox(
                  width:400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.blue.withOpacity(0.3),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          )

                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>edit()));
                      },
                      child: Text("EDIT")
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.withOpacity(0.3),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          )
                      ),
                      onPressed: (){},
                      child: Text("DELETE")
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
