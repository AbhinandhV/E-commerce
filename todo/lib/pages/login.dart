import 'package:flutter/material.dart';
import 'package:todo/model/model1.dart';
import 'package:todo/model/service/service1.dart';
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
    data=todoapplication().getdata();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(),
       body: FutureBuilder(
     future: data,
     builder:(contex,snapshot){
       if(snapshot.hasData && snapshot.data!.isNotEmpty) {
         return ListView.builder(
             itemCount: snapshot.data!.length,
             itemBuilder: (value, index) {
               return Card(
                 child: Column(
                   children: [
                     Text(snapshot.data![index].userId.toString()),
                     Text(snapshot.data![index].id.toString()),
                     Text(snapshot.data![index].title.toString()),
                     Text(snapshot.data![index].completed.toString())
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

     },
       )
     );
   }
 }
