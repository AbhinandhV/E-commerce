import 'dart:convert';

import 'package:event/pages/model/model1.dart';
import 'package:http/http.dart' as http;
class ViewEvents
{
  Future<dynamic> sendata(
      String name,
      String date,
      String venue,
      String description
      )
  async
  {
    var client=http.Client();
    var Url=Uri.parse("http://172.16.182.129:3002/api/event/add");
    var response=await client.post(Url,
    headers: <String,String>
    {
      "Content-Type":"application/json; charset=UTF-8"
    },
        body:jsonEncode(<String,String>
    { "eventName":name,
    "eventDescription":description,
    "eventDate":date,
    "eventVenue":venue}
    )
    );
    if(response.statusCode==200)
      {
        return json.decode(response.body);
      }
    else
      {
        throw Exception("failed to load data");
      }
  }
  Future<List<Posts>> GetEvent()
  async
  {
    var Client= http.Client();
    var Url=Uri.parse("http://172.16.182.129:3002/api/event/view");
    var response= await Client.get(Url);
    if(response.statusCode==200)
      {
        return postsFromJson(response.body);
      }
    else
      {
        return [];
      }
  }
}