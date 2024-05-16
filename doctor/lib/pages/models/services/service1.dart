import 'dart:convert';
import 'package:doctor/pages/models/models1.dart';
import 'package:http/http.dart' as http;
class ViewList
{
  Future<dynamic> Addoct(String docName,String docQualification,String docIdProofNumber,String docSpecialisation,String docYearOfExp)
  async
  {
    var client=http.Client();
    var Url=Uri.parse("http://172.16.182.129:3001/api/doctor/add");
    var response=await client.post(Url,
        headers:<String,String>
    {
      "Content-Type":"application/json; charset=UTF-8"
    },
    body: jsonEncode(<String,String>
    {
      "docName":docName ,
      "docQualification":docQualification ,
      "docIdProofNumber": docIdProofNumber,
      "docSpecialisation": docSpecialisation,
      "docYearOfExp":docYearOfExp
    }
    )
    );
    print(response);
    if(response.statusCode==200)
    {
      print("hello");
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("failed to load data");
    }

  }
  Future<List<Posts>> getlist()
  async
  {
    var Client= http.Client();
    var Url=Uri.parse("http://172.16.182.129:3001/api/doctor/view");
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