import 'package:book/pages/models/services/service1.dart';
import 'package:flutter/material.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key});

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  TextEditingController title1=new TextEditingController();
  TextEditingController author1=new TextEditingController();
  TextEditingController price1=new TextEditingController();
  TextEditingController publisher1=new TextEditingController();
  TextEditingController Category1=new TextEditingController();
  TextEditingController Coverimage1=new TextEditingController();
  void insert() async
  {
    final response=await ViewBook().AddBooks(
        title1.text,
        author1.text,
        price1.text,
        publisher1.text,
        Coverimage1.text,
        Category1.text);
    if(response["status"]=="success")
    {
      print("successfull");
    }
    else
    {
      print("error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ADD BOOK"),),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "BOOK TITLE",border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "BOOK AUTHOR",border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "BOOK PRICE",border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "BOOK COVERIMAGE",border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "PUBLISHER",border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "CATEGORY",border: OutlineInputBorder()
                  ),
                ),
          
                SizedBox(height: 30,),
                ElevatedButton(onPressed:insert
                , child: Text("ADD"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
