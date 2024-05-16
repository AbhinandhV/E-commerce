import 'package:doctor/pages/models/models1.dart';
import 'package:doctor/pages/models/services/service1.dart';
import 'package:flutter/material.dart';
class Viewpg extends StatefulWidget {
  const Viewpg({super.key});

  @override
  State<Viewpg> createState() => _ViewpgState();
}

class _ViewpgState extends State<Viewpg> {
  Future<List<Posts>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=ViewList().getlist();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Viewpage"),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot) {
              if(snapshot.hasData && snapshot.data!.isNotEmpty) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (value, index) {
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                              //leading: Icon(Icons.account_box_rounded),
                              leading: CircleAvatar(
                                child: Text(snapshot.data![index].docName.toString()[0]),
                              ),
                              title: Text("Name:"+snapshot.data![index].docName.toString()),
                              subtitle: Text("Qualification:"+snapshot.data![index].docQualification.toString()+ '\n'+"Doctors_Id:"+snapshot.data![index].docIdProofNumber.toString()+'\n'+"Specialization:"+snapshot.data![index].docSpecialisation.toString()+'\n'+"Years Of Experience:"+snapshot.data![index].docYearOfExp.toString()),
                            )
                          ],
                        ),
                      );
                    }
                );
              }
              else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );


  }
}