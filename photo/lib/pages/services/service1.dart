import 'package:http/http.dart' as http;
import 'package:photo/pages/models/model1.dart';

class album
{
  Future<List<Posts>> getphoto() async{
    var client=http.Client();
    var url=Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response= await client.get(url);
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