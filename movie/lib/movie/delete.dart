import 'package:flutter/material.dart';

class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {"movie":"Charlie","year":"2015","actor":"C","poster":"https://upload.wikimedia.org/wikipedia/en/4/4e/Charlie_2015-Malayalam_film_poster.jpg"},
      {"movie":"Kumbalangi Nights","year":"2019","actor":"K","poster":"https://i0.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Kumbalangi-Nights-poster-by-Oldmonks.jpg?ssl=1"},
      {"movie":"2018","year":"2023","actor":"T","poster":"https://upload.wikimedia.org/wikipedia/en/thumb/f/fe/2018movie.jpg/220px-2018movie.jpg"},
      {"movie":"Athiran","year":"2019","actor":"A","poster":"https://upload.wikimedia.org/wikipedia/en/f/f9/Athiran_film_poster.jpg"},
      {"movie":"Drishyam","year":"2013","actor":"D","poster":"https://i0.wp.com/vishnugopal.com/wp-content/uploads/2014/04/drishyam-movie-poster-mohanlal.jpg?quality=89&ssl=1"},
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("VIEW ALl",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context,index)
            {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(data[index]["movie"]),
                      subtitle: Text(data[index]["year"]),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(data[index]["actor"]),
                      ),
                    ),
                    Image.network(data[index]["poster"],
                      width: double.infinity,
                      height: 450,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
