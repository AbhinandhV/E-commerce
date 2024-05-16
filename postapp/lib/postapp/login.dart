import 'package:flutter/material.dart';
import 'package:postapp/models/post%20model.dart';
import 'package:postapp/services/postservice.dart';
class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  Future<List<Posts >> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PostService().get();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:FutureBuilder(
            future: data,
            builder: (contex,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder:(value,index){
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(snapshot.data![index].userId.toString()),
                            Text(snapshot.data![index].title.toString()),
                            Text(snapshot.data![index].body.toString()),
                          ],
                        ),
                      );
                    }
                    );
              }
              else{
                return CircularProgressIndicator();
              }
            }),
    ),
    );

  }
}
