import 'package:doctor/pages/models/models1.dart';
import 'package:doctor/pages/models/services/service1.dart';
import 'package:flutter/material.dart';

class ViewEvent extends StatefulWidget {
  const ViewEvent({super.key});
  @override
  State<ViewEvent> createState() => _ViewEventState();
}
class _ViewEventState extends State<ViewEvent> {
  Future<List<Posts>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=ViewList().getlist();

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: data,
        builder: (context,snapshot)
        {
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
          {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder:(context,index)
                {
                  return Card(
                    child: Column(
                      children: [
                        Text(snapshot.data![index].docName.toString()),
                        Text(snapshot.data![index].docQualification.toString()),
                        Text(snapshot.data![index].docSpecialisation.toString()),
                        Text(snapshot.data![index].docIdProofNumber.toString()),
                        Text(snapshot.data![index].docYearOfExp.toString()),
                      ],
                    ),
                  );
                });
          }
          else
          {
            return CircularProgressIndicator();
          }
        });
  }
}