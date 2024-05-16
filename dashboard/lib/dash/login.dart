import 'package:flutter/material.dart';
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.lightGreen
                  ]
                )
              ),
              width: 400,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("FISAT COLLEGE",style: TextStyle(fontSize: 30),),
                  Text("Next class on 08/12/20204",style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink,
                          Colors.pink,
                        ]
                      )
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.pink,
                              Colors.pink,
                            ]
                        )
                    ),
                  )
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}
