import 'package:flutter/material.dart';

class Feed_app extends StatelessWidget {
  const Feed_app({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>>data = [
      {
        "title": "Bruice wayn",
        "subtitle": "kochi",
        "profile": "https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg",
        "image": "https://www.shutterstock.com/image-vector/batman-design-logo-sign-icon-600nw-2317334183.jpg"
      },
      {
        "title": "Batman",
        "subtitle": "kochi",
        "profile": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf1Mcs-qS5Q5-CO5gtMi3uhprMUS0ee7dijxa3nei0XEK41jFbXyWlIDr1CA0KKGdD33o&usqp=CAU",
        "image": "https://i.pinimg.com/736x/c3/30/18/c330181cc3c535cc157482981e4203d4.jpg"
      },
      {
        "title": "Joker",
        "subtitle": "kochi",
        "profile": "https://cdn.vectorstock.com/i/preview-1x/13/04/male-profile-picture-vector-2041304.jpg",
        "image": "https://static.wikia.nocookie.net/heroes-fr/images/5/58/Batman-ArkhamKnight-BatsuitRender-1-.png/revision/latest?cb=20200828151708&path-prefix=fr"
      },
      {
        "title": "Real",
        "subtitle": "kochi",
        "profile": "https://cdn2.vectorstock.com/i/1000x1000/11/41/male-profile-picture-vector-2051141.jpg",
        "image": "https://static.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/d/d1/Batman.png/revision/latest/thumbnail/width/360/height/360?cb=20200323061733&path-prefix=es"
      },
      {}];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Image.network("https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-only-font.png"),
            IconButton(onPressed:()
            {

            }, icon: Icon(Icons.arrow_drop_down)),
            SizedBox(width: 110,),
            IconButton(onPressed:(){

            }, icon: Icon(Icons.add_box_outlined)),
            IconButton(onPressed:(){

            }, icon: Icon(Icons.favorite_border)),
            IconButton(onPressed:(){

            }, icon: Icon(Icons.messenger_outline)),


          ],
        ),
        body:
        ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                        tileColor: Colors.white,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data[index]["profile"]),
                          backgroundColor: Colors.lightBlue,
                          foregroundColor: Colors.purpleAccent,
                        ),
                        trailing: Icon(Icons.more_vert,),
                        title: Text(data[index]["title"],style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle:
                        Row(
                          children: [
                            Text(data[index]["subtitle"]),
                          ],

                        )
                    ),
                    Image.network(data[index]["image"]),

                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.favorite_border,size: 30,color: Colors.black,),
                        SizedBox(width: 10,),
                        Icon(Icons.chat_bubble_outline,size:30,color: Colors.black,),
                        SizedBox(width: 10,),
                        Icon(Icons.send,size: 30,color: Colors.black,),
                        SizedBox(width: 320,),
                        Icon(Icons.bookmark_border,size: 30,color: Colors.black,),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 5,),
                            SizedBox(width: 20,),
                            Text("17 likes",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text(data[index]["title"],style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 5,),
                            Text("Caption",),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(height: 5,),
                            SizedBox(width: 18,),
                            CircleAvatar(
                              backgroundImage: NetworkImage(data[index]["profile"]),
                              radius: 15,
                            ),
                            SizedBox(width: 10,),
                            Text("Add comments",style: TextStyle(color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
