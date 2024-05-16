// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  String vistorName;
  String vistorPhone;
  String vistorAadhar;
  String vistorPlace;
  String PurposeOfVisit;

  Welcome({
    required this.vistorName,
    required this.vistorPhone,
    required this.vistorAadhar,
    required this.vistorPlace,
    required this.PurposeOfVisit,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    vistorName: json["vistorName"],
    vistorPhone: json["vistorPhone"],
    vistorAadhar: json["vistorAadhar"],
    vistorPlace: json["vistorPlace"],
    PurposeOfVisit: json["PurposeOfVisit"],
  );
  Map<String, dynamic> toJson() => {
    "vistorName": vistorName,
    "vistorPhone": vistorPhone,
    "vistorAadhar": vistorAadhar,
    "vistorPlace": vistorPlace,
    "PurposeOfVisit": PurposeOfVisit,
  };
}
