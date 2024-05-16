import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {"movie":"La Copa de la Vida","director":"Ricky Martin ","poster":"https://upload.wikimedia.org/wikipedia/en/e/e1/The_Cup_of_Life_cover.png"},
      {"movie":"Waka Waka","director":"Shakira","poster":"https://upload.wikimedia.org/wikipedia/en/7/70/Shakirasinglewc.jpg"},
      {"movie":"Wavin' Flag","director":"K'naan","poster":"https://upload.wikimedia.org/wikipedia/en/4/4e/Wavin%27_Flag_single.jpg"},
      {"movie":"Carnaval de Paris","director":"Dario G","poster":"https://upload.wikimedia.org/wikipedia/en/8/8c/Dario_G_-_Carnaval_de_Paris_single.jpg"},
      {"movie":"We Are One","director":"Jennifer Lopez","poster":"https://upload.wikimedia.org/wikipedia/en/e/e8/We_Are_One_cover.png"},
      {"movie":"World in Motion","director":"John Barnes","poster":"https://upload.wikimedia.org/wikipedia/en/7/7d/Neworderworldinmotion.jpg"},
      {"movie":"Un'estate italiana","director":"Edoardo Bennato","poster":"https://upload.wikimedia.org/wikipedia/en/9/96/Un%27estate_italiana.jpg"},
      {"movie":"The Time of Our Lives","director":"Toni Braxton","poster":"https://upload.wikimedia.org/wikipedia/en/6/60/The_Time_of_Our_Lives_EP.png"},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("SONGS",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
      ),
      body:ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index)
          {
            return Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text(data[index]["movie"]),
                    subtitle: Text(data[index]["director"]),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(data[index]["poster"]),
                    ),
                    trailing: Icon(Icons.favorite_border),
                  )
                ],
              ),
            );
          }),
    );
  }
}