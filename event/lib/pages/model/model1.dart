// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String eventName;
  String eventDescription;
  String eventDate;
  String eventVenue;

  Posts({
    required this.eventName,
    required this.eventDescription,
    required this.eventDate,
    required this.eventVenue,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    eventName: json["eventName"],
    eventDescription: json["eventDescription"],
    eventDate: json["eventDate"],
    eventVenue: json["eventVenue"],
  );

  Map<String, dynamic> toJson() => {
    "eventName": eventName,
    "eventDescription": eventDescription,
    "eventDate": eventDate,
    "eventVenue": eventVenue,
  };
}
