import 'package:flutter/material.dart';
class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {
        "empcode":123,"NAME":"ABHI","DES":"CEO"
      },
      {
        "empcode":123,"NAME":"ABHI","DES":"CEO"
      },
      {
        "empcode":123,"NAME":"ABHI","DES":"CEO"
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("EMPLOYEE"),),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context,index)
        {
          return Card(
            child: Column(
              children: [
                Text(data[index]["empcode"]),
                Text(data[index]["NAME"]),
                Text(data[index]["DES"]),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("EDIT")),
                    ElevatedButton(onPressed: (){}, child: Text("DELETE"))
                  ],
                )

              ],
            ),
          );
        },
      )


      ),
    );
  }
}
