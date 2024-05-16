import 'dart:convert';

import 'package:book/pages/models/model1.dart';
import 'package:http/http.dart' as http;
class ViewBook
{
  Future<dynamic> AddBooks(String title,String author,String price,String publisher,String Coverimage,String Category)
  async
  {
    var client=http.Client();
    var Url=Uri.parse("http://172.16.180.115:3000/addBooks");
    var response=await client.post(Url,
        headers: <String,String>
        {
        "Content-Type":"application/json; charset=UTF-8"
        },
        body:jsonEncode(<String,String>
        {
          "bookTitle": title,
          "bookCoverImage": Coverimage,
          "bookAuthor":author,
          "bookPrice":price,
          "bookPublisher": publisher,
          "bookCategory": Category
        })
    );
    print(response);
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("failed to load data");
    }

  }
  Future<List<Posts>> ShowBook() async
  {
    var client=http.Client();
    var Url=Uri.parse("http://172.16.180.115:3000/books");
    var response= await client.get(Url);
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