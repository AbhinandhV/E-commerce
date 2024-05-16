import 'package:todo/model/model1.dart';
import 'package:http/http.dart' as http;

class todoapplication
{
  Future<List<Posts>> getdata() async{
    var client= http.Client();
    var url=Uri.parse("https://jsonplaceholder.typicode.com/todos");
    var response= await client.get(url);
    if (response.statusCode==200)
      {
        return postsFromJson(response.body);
      }
    else
      {
        return [];
      }


}
}