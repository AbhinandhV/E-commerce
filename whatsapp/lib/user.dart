import 'package:flutter/material.dart';
class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {"title":"Arjun","subtitle":"hi","profile":"https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.34 pm"},
      {"title":"Archana","subtitle":"hello","profile":"https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.52 pm"},
      {"title":"Delna","subtitle":"good morning","profile":"https://images.pexels.com/photos/610294/pexels-photo-610294.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.34 pm"},
      {"title":"Aarathy","subtitle":"hi","profile":"https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&w=600","time":"7.34 pm"},
      {"title":"Parvathy","subtitle":"hello","profile":"https://images.pexels.com/photos/1821095/pexels-photo-1821095.jpeg?auto=compress&cs=tinysrgb&w=600","time":"8.94 pm"},
      {"title":"Manu","subtitle":"good morning","profile":"https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600","time":"6.43 pm"},
      {"title":"Arjun","subtitle":"hi","profile":"https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.34 pm"},
      {"title":"Archana","subtitle":"hello","profile":"https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.52 pm"},
      {"title":"Delna","subtitle":"good morning","profile":"https://images.pexels.com/photos/610294/pexels-photo-610294.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.34 pm"},
      {"title":"Aarathy","subtitle":"hi","profile":"https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&w=600","time":"7.34 pm"},
      {"title":"Parvathy","subtitle":"hello","profile":"https://images.pexels.com/photos/1821095/pexels-photo-1821095.jpeg?auto=compress&cs=tinysrgb&w=600","time":"8.94 pm"},
      {"title":"Manu","subtitle":"good morning","profile":"https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600","time":"6.43 pm"},
      {"title":"Arjun","subtitle":"hi","profile":"https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.34 pm"},
      {"title":"Archana","subtitle":"hello","profile":"https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.52 pm"},
      {"title":"Delna","subtitle":"good morning","profile":"https://images.pexels.com/photos/610294/pexels-photo-610294.jpeg?auto=compress&cs=tinysrgb&w=600","time":"5.34 pm"},
      {"title":"Aarathy","subtitle":"hi","profile":"https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&w=600","time":"7.34 pm"},
      {"title":"Parvathy","subtitle":"hello","profile":"https://images.pexels.com/photos/1821095/pexels-photo-1821095.jpeg?auto=compress&cs=tinysrgb&w=600","time":"8.94 pm"},
      {"title":"Manu","subtitle":"good morning","profile":"https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600","time":"6.43 pm"}
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.blueGrey,
          actions: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Icon(Icons.camera),
                    SizedBox(width: 20,),
                    Icon(Icons.search),
                    SizedBox(width: 20,),
                  ],
                ),
              ],
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index)
          {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text(data[index]["subtitle"]),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(data[index]["profile"]),
                    ),
                    trailing: Text(data[index]["time"]),
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
