import 'package:flutter/material.dart';
import 'package:visitor/pages/models/model1.dart';
import 'package:visitor/pages/models/services/service1.dart';

class views extends StatefulWidget {
  const views({super.key});

  @override
  State<views> createState() => _viewState();
}

class _viewState extends State<views> {
  Future<List<Welcome>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=view().getview();

  }
  Widget build(BuildContext context) {
    return FutureBuilder(
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
              child: Column(
                children: [
                  ListTile(
                    title: Text("NAME :"+ snapshot.data![index].vistorName.toString()),
                    subtitle: Text("NAME :"+ snapshot.data![index].vistorPhone.toString()+"\n"+"Aadhar :"+snapshot.data![index].vistorAadhar.toString()+"\n"+"VISITOR PLACE:"+snapshot.data![index].vistorPlace.toString()+"\n"+"PURPOSE"+snapshot.data![index].PurposeOfVisit.toString()),
                    leading: CircleAvatar(
                      child: Text(snapshot.data![index].vistorName[0]),
                    ),
                  )
                ],
              )
              );
          }
          );
        }
      else
        {
          return CircularProgressIndicator();
        }
    }
    );
  }
}
