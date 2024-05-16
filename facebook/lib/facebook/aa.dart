import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
class userpage extends StatelessWidget {
  const userpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[{

    }]
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("facebook",style: TextStyle(color: Colors.indigo,fontStyle: FontStyle.italic,fontSize: 40),),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        subtitle: SizedBox(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "search",border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn-icons-png.freepik.com/512/6915/6915987.png"),
                        ),
                        trailing: Icon(Icons.photo_album,color: Colors.green,),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        title: Text("Mohanlal"),
                        subtitle: Text("kochi"),
                        leading: CircleAvatar(backgroundImage:
                        NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/5/5d/Mohanlal_Viswanathan_BNC.jpg"),
                        ),
                        trailing: Icon(Icons.add),
                      ),
                      Image.network("https://images.indianexpress.com/2024/01/malaikottai-vaaliban-movie-review.jpg?w=414"),
                      Row(
                        children: [
                          Icon(Icons.thumb_up,size: 40,),
                          SizedBox(width: 100,),
                          Icon(Icons.comment,size: 40,),
                          SizedBox(width: 100,),
                          Icon(Icons.share,size: 40,)
                        ],
                      ),
                      SizedBox(height: 10,),

                      ListTile(
                        title: Text("Lionel Messi"),
                        leading: CircleAvatar(backgroundImage:
                        NetworkImage("https://image-service.onefootball.com/transform?w=96&dpr=2&image=https://images.onefootball.com/players/180/134.jpg"
                        ),
                        ),
                        subtitle: Text("FIFA Best Player 2023"),
                        trailing: Icon(Icons.add),
                      ),
                      Image.network(
                          "https://images.thequint.com/thequint%2F2023-02%2F3101a23a-7dd0-4838-8c01-3ae2ab08dae9%2Fthumbnail_28021_ap02_28_2023_000003b.jpg?auto=format%2Ccompress&fmt=webp&width=120&w=1200"),
                      Row(
                        children: [
                          Icon(Icons.thumb_up,size: 40,),
                          SizedBox(width: 100,),
                          Icon(Icons.comment,size: 40,),
                          SizedBox(width: 100,),
                          Icon(Icons.share,size: 40,)
                        ],
                      ),
                      SizedBox(height: 10,),

                      ListTile(
                        title: Text("BMW India"),
                        leading: CircleAvatar(backgroundImage:
                        NetworkImage("https://imgctcf.aeplcdn.com/thumbs/p-nc-p-s600-ver4/images/cars/BMW-opens-new-technical-training-center-in-Gurgaon-India.jpeg?q=75"
                        ),
                        ),
                        subtitle: Text("Newly Launched"),
                        trailing: Icon(Icons.add),
                      ),
                      Image.network(
                          "https://etimg.etb2bimg.com/photo/96826732.cms"),
                      Row(
                        children: [
                          Icon(Icons.thumb_up,size: 40,),
                          SizedBox(width: 100,),
                          Icon(Icons.comment,size: 40,),
                          SizedBox(width: 100,),
                          Icon(Icons.share,size: 40,)
                        ],
                      ),
                    ],
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
