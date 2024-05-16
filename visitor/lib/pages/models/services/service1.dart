import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:visitor/pages/models/model1.dart';

class view
{
  Future<dynamic> sendata(
      String vistorName,String vistorPhone,String vistorAadhar,String vistorPlace,String PurposeOfVisit)async
  {
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.182.129:3001/api/visitor/add");
    var response=await client.post(apiUrl,
    headers: <String,String>
    {
      "Content-Type":"application/json; charset=UTF-8"
    },
    body:jsonEncode(<String,String>
    {"vistorName":vistorName ,
    "vistorPhone": vistorPhone,
    "vistorAadhar":vistorAadhar,
    "vistorPlace":vistorPlace,
    "PurposeOfVisit":PurposeOfVisit}
    )
  );

    print(response);
    if(response.statusCode==200)
      {
        return json.decode(response.body);
      }
    else
      {
        print("hello");
        throw Exception("failed to load data");
      }

  }
  Future<List<Welcome>> getview() async
  {
    var client=http.Client();
    var url=Uri.parse("http://172.16.182.129:3001/api/visitor/viewall");
    var response=await client.get(url);
    print(response);
    if(response.statusCode==200)
      {
        return welcomeFromJson(response.body);
      }
    else
      {
        return [];
      }
  }
}