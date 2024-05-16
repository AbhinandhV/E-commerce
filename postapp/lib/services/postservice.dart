import 'package:http/http.dart' as http;
import 'package:postapp/models/post%20model.dart';
class PostService{

  Future<List<Posts>> get() async{
    var client=http.Client();
    var apiurl=Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response= await client.get(apiurl);
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