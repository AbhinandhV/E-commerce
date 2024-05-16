
import 'package:album/pages/model/model1.dart';
import 'package:album/pages/services/service1.dart';
import 'package:flutter/material.dart';

class userpage extends StatefulWidget {
  const userpage({super.key});

  @override
  State<userpage> createState() => _userpageState();
}

class _userpageState extends State<userpage> {
  Future<List<Posts>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=service().getposts();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
            future: data, 
            builder: (context,snapshot)
        {
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
            {
              return ListView.builder(
                  itemCount:snapshot.data!.length, 
                  itemBuilder:(context,index)
              {
                return Card(
                  child: Column(
                    children: [
                      Text(snapshot.data![index].albumId.toString()),
                      Text(snapshot.data![index].id.toString()),
                      Text(snapshot.data![index].title.toString()),
                      Text(snapshot.data![index].thumbnailUrl.toString()),
                    ],
                  ),
                );
              }
              );
             
            }
          else
            {
              return CircularProgressIndicator();
            }
        }),
      ),
    );
  }
}
