import 'package:event/pages/model/model1.dart';
import 'package:event/pages/services/service1.dart';
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
    data=ViewEvents().GetEvent();

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
                        Text(snapshot.data![index].eventName.toString()),
                        Text(snapshot.data![index].eventDate.toString()),
                        Text(snapshot.data![index].eventDescription.toString()),
                        Text(snapshot.data![index].eventVenue.toString()),
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