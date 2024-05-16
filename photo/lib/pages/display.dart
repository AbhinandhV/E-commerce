import 'package:flutter/material.dart';
import 'package:photo/pages/models/model1.dart';
import 'package:photo/pages/services/service1.dart';
class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  Future<List<Posts>> ? data;
  @override
 void initState() {
    // TODO: implement initState
    super.initState();
    data=album().getphoto();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Comment List"),
        backgroundColor: Colors.blue,
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot)
        {
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
            {
              return ListView.builder(
                  itemCount:snapshot.data!.length,
                  itemBuilder:(value,index)
              {
                return Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(snapshot.data![index].postId.toString()),
                      Text(snapshot.data![index].id.toString()),
                      Text(snapshot.data![index].email.toString()),
                      Text(snapshot.data![index].body.toString()),
                      Card(
                        child: Row(
                          children: [
                                Icon(Icons.favorite,color: Colors.red,),
                                SizedBox(width: 50,),
                                Icon(Icons.thumb_down,color: Colors.red,)
                          ],
                        ),
                      )
                    ],
                  ),
                );

              });

            }
          else
            {
              return CircularProgressIndicator();
            }
        })

      ),
    );
  }
}
