import 'package:flutter/material.dart';
class userpage extends StatelessWidget {
  const userpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {
        "title":"ELON MUSK","subtitle":"usa","profilepic":"https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSb5YTP_Zfb9Aj9h3n79iDjofIAWbIRCn2mbRxjP04h8I7nDF1tj5DP_oCVy4xqRAyd5fxaiA9eZGJ0W4I",
        "post":"https://akm-img-a-in.tosshub.com/businesstoday/images/story/202305/maxresdefault_1-sixteen_nine.jpg?size=948:533"
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
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black,title: Text("Instagram",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 40),
        ),
          actions: [
            Row(
              children: [
                Image.network("https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-icon-white-border-text-black-background.png"),
                SizedBox(width:30 ,),
                Icon(Icons.favorite,color: Colors.red,),
                SizedBox(width: 50,),
                Icon(Icons.message,color: Colors.red,)
              ],
            )
          ],
        ),

        body:
        ListView.builder(
            itemCount:data.length,
            itemBuilder:(context,index)
            {
              return Card(
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(data[index]["title"],style: TextStyle(color: Colors.white),),
                      subtitle:Text(data[index]["subtitle"],style: TextStyle(color: Colors.white)),
                      leading: CircleAvatar(backgroundImage: NetworkImage(data[index]["profilepic"]),),
                      trailing: Icon(Icons.add,color: Colors.white,),
                    ),
                    Image.network(data[index]["post"]),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                        SizedBox(width: 10,),
                        Icon(Icons.chat_bubble_outline,size:30,color: Colors.white,),
                        SizedBox(width: 10,),
                        Icon(Icons.send,size: 30,color: Colors.white,),
                      ],
                    )
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
