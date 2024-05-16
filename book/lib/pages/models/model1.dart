// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String? bookTitle;
  String? bookCoverImage;
  String? bookAuthor;
  String? bookPrice;
  String? bookPublisher;
  String? bookCategory;

  Posts({
    this.bookTitle,
    this.bookCoverImage,
    this.bookAuthor,
    this.bookPrice,
    this.bookPublisher,
    this.bookCategory,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    bookTitle: json["bookTitle"],
    bookCoverImage: json["bookCoverImage"],
    bookAuthor: json["bookAuthor"],
    bookPrice: json["bookPrice"],
    bookPublisher: json["bookPublisher"],
    bookCategory: json["bookCategory"],
  );

  Map<String, dynamic> toJson() => {
    "bookTitle": bookTitle,
    "bookCoverImage": bookCoverImage,
    "bookAuthor": bookAuthor,
    "bookPrice": bookPrice,
    "bookPublisher": bookPublisher,
    "bookCategory": bookCategory,
  };
}
