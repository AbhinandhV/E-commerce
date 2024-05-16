import 'package:http/http.dart' as http;
 import 'package:album/pages/model/model1.dart';

class service
 {
   Future<List<Posts>> getposts() async
   {
     var client=http.Client();
     var url=Uri.parse("https://jsonplaceholder.typicode.com/photos");
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