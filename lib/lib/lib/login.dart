import 'package:flutter/material.dart';
import 'package:lib/lib/menu.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("LibraryApp",
            style: TextStyle(color: Colors.white
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage("https://banner2.cleanpng.com/20180331/kjq/kisspng-mississauga-library-system-school-library-public-l-library-5abfdfc5c8b219.7039220915225241018221.jpg"),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "eMailID",
                        labelText: "Enter eMailID",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Enter Password",
                        border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.withOpacity(0.3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                            )
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>MenuPage()));
                        },
                        child: Text("Login")),
                  )
                ],
              ),
              ),
        ),
        );
    }
}