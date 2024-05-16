import 'package:flutter/material.dart';
class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map< String,dynamic>> data=[{
      "title":"LIJO","subtitle":"IDUKKI","profilepic":"https://www.zonkerala.com/movies/gallery/malaikottai-vaaliban/album-film-malaikottai-vaaliban-1509.jpg","post":"https://www.hindustantimes.com/ht-img/img/2024/01/24/550x309/mohanlal__1706103136517_1706103136738.jpg"
    },{  "title":"TINU","subtitle":"KOCHI","profilepic":"https://www.zonkerala.com/movies/gallery/malaikottai-vaaliban/album-film-malaikottai-vaaliban-1509.jpg","post":"https://www.hindustantimes.com/ht-img/img/2024/01/24/550x309/mohanlal__1706103136517_1706103136738.jpg"},
      {  "title":"MOHANLAL","subtitle":"TRIVANDRUM","profilepic":"https://www.zonkerala.com/movies/gallery/malaikottai-vaaliban/album-film-malaikottai-vaaliban-1509.jpg","post":"https://www.hindustantimes.com/ht-img/img/2024/01/24/550x309/mohanlal__1706103136517_1706103136738.jpg"}];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.withOpacity(0.2),
          title: Text("CONTACTS"),
        ),
        body:
        ListView.builder(
          itemCount: data.length,
            itemBuilder: (context,index){
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text(data[index]["subtitle"]),
                    leading: CircleAvatar(backgroundImage: NetworkImage(data[index]["profilepic"]),
                    ),
                    trailing: Icon(Icons.phone_bluetooth_speaker_rounded,color: Colors.red,),
                  ),
                  Image.network(data[index]["post"]
                  ,width: double.infinity,height: 250,)
                ],
              ),
            );
            })
      ),
    );
  }
}