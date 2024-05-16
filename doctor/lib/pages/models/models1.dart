// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String docName;
  String docQualification;
  String docIdProofNumber;
  String docSpecialisation;
  String docYearOfExp;

  Posts({
    required this.docName,
    required this.docQualification,
    required this.docIdProofNumber,
    required this.docSpecialisation,
    required this.docYearOfExp,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    docName: json["docName"],
    docQualification: json["docQualification"],
    docIdProofNumber: json["docIdProofNumber"],
    docSpecialisation: json["docSpecialisation"],
    docYearOfExp: json["docYearOfExp"],
  );

  Map<String, dynamic> toJson() => {
    "docName": docName,
    "docQualification": docQualification,
    "docIdProofNumber": docIdProofNumber,
    "docSpecialisation": docSpecialisation,
    "docYearOfExp": docYearOfExp,
  };
}
