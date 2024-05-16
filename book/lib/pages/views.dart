import 'package:book/pages/models/model1.dart';
import 'package:book/pages/models/services/service1.dart';
import 'package:flutter/material.dart';

class Views extends StatefulWidget {
  const Views({super.key});

  @override
  State<Views> createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  Future<List<Posts>> ? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = ViewBook().ShowBook();
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        ListTile(title:Text("BOOK TITLE :"+snapshot.data![index].bookTitle.toString())),
                        ListTile(subtitle:Text("AUTHOR :"+snapshot.data![index].bookAuthor.toString()+"\n"
                           "CATEGORY :" +snapshot.data![index].bookCategory.toString()+"\n"
                            "PRICE :"+snapshot.data![index].bookPrice.toString()+"\n"+"PUBLISHER :"+
                            snapshot.data![index].bookPublisher.toString()
                        )
                        ),
                        Image.network(snapshot.data![index].bookCoverImage.toString()),
                      ],
                    ),

                  );
                }
            );
          }
          else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}