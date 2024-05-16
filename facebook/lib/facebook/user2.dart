import 'package:flutter/material.dart';

class Userpage extends StatelessWidget {
  const Userpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {
        "title":"MOHANLAL","subtitle":"kochi","profilepic":"https://upload.wikimedia.org/wikipedia/commons/5/5d/Mohanlal_Viswanathan_BNC.jpg",
        "post":"https://images.indianexpress.com/2024/01/malaikottai-vaaliban-movie-review.jpg?w=414"
      },
      {
        "title":"LIONEL MESSI","subtitle":"Argentina","profilepic":"https://image-service.onefootball.com/transform?w=96&dpr=2&image=https://images.onefootball.com/players/180/134.jpg",
        "post":"https://images.thequint.com/thequint%2F2023-02%2F3101a23a-7dd0-4838-8c01-3ae2ab08dae9%2Fthumbnail_28021_ap02_28_2023_000003b.jpg?auto=format%2Ccompress&fmt=webp&width=120&w=1200"
      },
      {
        "title":"BMW India","subtitle":"chennai","profilepic":"https://imgctcf.aeplcdn.com/thumbs/p-nc-p-s600-ver4/images/cars/BMW-opens-new-technical-training-center-in-Gurgaon-India.jpeg?q=75",
        "post":"https://etimg.etb2bimg.com/photo/96826732.cms"
      }
    ];
    return MaterialApp(
      home: Scaffold(
        body:ListView.builder(itemCount: data.length,
        itemBuilder:(context,index)
        {
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(data[index]["title"]),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
