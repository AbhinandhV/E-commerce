import 'package:flutter/material.dart';

class DeletePage extends StatelessWidget {
  const DeletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              title: Text("LibraryApp"),
            ),
            body: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Book Title",
                        labelText: "Enter Book Title",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.withOpacity(0.3),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            )
                        ),
                        onPressed: (){},
                        child: Text("Delete")
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.withOpacity(0.3),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            )
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("Back To Menu")),
                  )
                ],
              ),
            ),
            ),
        );
    }
}