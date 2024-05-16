import 'package:flutter/material.dart';
class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> data=[
      {"name":"Ronaldo","sub":"Goat","profile":"7"},
      {"name":"Messi","sub":"goat","profile":"10"},
      {"name":"Neymar","sub":"in hospital","profile":"11"},
      {"name":"Lewandowski","sub":"levels","profile":"9"},
      {"name":"Benzema","sub":"15","profile":"9"},
      {"name":"Zlatan","sub":"God","profile":"10"},
      {"name":"De Bruyne","sub":"Let me talk","profile":"17"},
      {"name":"Hazard","sub":"Call an ambulance","profile":"10"},
      {"name":"Modric","sub":"better than xavi","profile":"10"},
      {"name":"Mbappe","sub":"turtle","profile":"7"},
      {"name":"Haaland","sub":"Majin buu","profile":"9"},
      {"name":"Rodri","sub":"Good lad","profile":"8"},
      {"name":"Aguero","sub":"Stupid","profile":"10"},
      {"name":"Iniesta","sub":"Goat tier","profile":"6"},
      {"name":"Kroos","sub":"sniper","profile":"8"},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("CONTACTS",style: TextStyle(color: Colors.white),)
        ,
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index)
          {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(data[index]["name"]),
                    subtitle: Text(data[index]["sub"]),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                      child: Text(data[index]["profile"],style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.call,size: 40,),
                      SizedBox(width: 100,),
                      Icon(Icons.bluetooth_audio,size: 40,),
                      SizedBox(width: 100,),
                      Icon(Icons.delete,size: 40,)

                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}

