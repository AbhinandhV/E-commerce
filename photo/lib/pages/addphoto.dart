import 'package:flutter/material.dart';
import 'package:photo/pages/display.dart';
class addphoto extends StatefulWidget {
  const addphoto({super.key});

  @override
  State<addphoto> createState() => _addphotoState();
}
class _addphotoState extends State<addphoto> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child:
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/abstract-dark-background-with-flowing-colouful-waves_1048-13124.jpg")
              )
            ),
            padding: EdgeInsets.all(55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("COMMENT",style: TextStyle(color: Colors.white,fontSize: 40,fontStyle: FontStyle.italic),),
                SizedBox(height: 30,),
                SizedBox(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,width: 3.0
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purpleAccent,
                          width: 0.3
                        )
                      ),
                      border: OutlineInputBorder(),labelText:"Id",labelStyle: TextStyle(
                      color: Colors.white,fontSize: 20,
                    )
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,width: 3.0
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purpleAccent,
                                width: 0.3
                            )
                        ),
                        border: OutlineInputBorder(),labelText:" POST:Id",labelStyle: TextStyle(
                      color: Colors.white,fontSize: 20
                    )
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,width: 3.0
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purpleAccent,
                                width: 0.3
                            )
                        ),
                        border: OutlineInputBorder(),labelText:"NAME",hintText: "ENTER NAME",labelStyle: TextStyle(
                        color: Colors.white,fontSize: 20
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,width: 3.0
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purpleAccent,
                                width: 0.3
                            )
                        ),
                        border: OutlineInputBorder(),labelText:"EMAIL",hintText: "ENTER EMAIL",labelStyle: TextStyle(
                        color: Colors.white,fontSize: 20

                    ),
                  ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,width: 3.0
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.purpleAccent,
                                width: 0.3
                            )
                        ),
                        border: OutlineInputBorder(),labelText:"BODY",hintText: "ENTER BODY",labelStyle: TextStyle(
                        color: Colors.white,fontSize: 20
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                      ),
                      onPressed: (){},
                      child: Text("SUBMIT")
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder()
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>display()));
                      }, child: Text("VIEW")
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
