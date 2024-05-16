import 'package:postapp/models/post%20model.dart';
import 'package:http/http.dart' as http;
class PostService{
  Future<List<Posts>> getPost() async{
    var client=http.Client();
    var url=Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response=await client.get(url);
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