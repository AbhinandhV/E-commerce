import 'package:flutter/material.dart';
import 'package:lib/lib/add.dart';
import 'package:lib/lib/delete.dart';
import 'package:lib/lib/search.dart';
import 'package:lib/lib/view.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("LibraryApp"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
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
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>AddPage()
                        ));
                      },
                      child: Text("Add Books")
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>ViewPage()));
                      },
                      child: Text("View All Books")
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.withOpacity(0.3),
                          foregroundColor:Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>SearchPage())
                        );
                      },
                      child: Text("Search Books")
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.withOpacity(.3),
                          foregroundColor:Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(4)
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>DeletePage()));
                      },
                      child: Text("Delete Books")
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.blue.withOpacity(0.3),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(4)
                          )
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Back To Login")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}