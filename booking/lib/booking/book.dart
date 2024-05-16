import 'package:flutter/material.dart';
class book extends StatelessWidget {
  const book({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {"title":"MARUTHI","subtitle":"KOCHI","profile":"https://imgd.aeplcdn.com/370x208/n/cw/ec/130591/fronx-exterior-right-front-three-quarter-109.jpeg?isig=0&q=80"},
      {"title":"HYUNDAI","subtitle":"KOCHI","profile":"https://images.unsplash.com/photo-1619767886558-efdc259cde1a?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aHl1bmRhaXxlbnwwfHwwfHx8MA%3D%3D"},
      {"title":"TOYOTA","subtitle":"TRIVANDRUM","profile":"https://media.zigcdn.com/media/model/2021/Jan/fortuner-3_360x240.jpg"},
      {"title":"BMW","subtitle":"KOTTAYAM","profile":"https://www.bmw.in/content/dam/bmw/marketIN/bmw_in/all-models/3-series/gl/2023/navigation.png"},
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ZOOM CARS"),
          backgroundColor: Colors.blueGrey,
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
