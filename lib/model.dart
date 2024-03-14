import 'dart:convert';

class ModelData {
  final String activity;
  final String type;
  final int participants;
  final double price;
  final String link;
  final String key;
  final double accessibility;

  ModelData({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  ModelData copyWith({
    String? activity,
    String? type,
    int? participants,
    double? price,
    String? link,
    String? key,
    double? accessibility,
  }) =>
      ModelData(
        activity: activity ?? this.activity,
        type: type ?? this.type,
        participants: participants ?? this.participants,
        price: price ?? this.price,
        link: link ?? this.link,
        key: key ?? this.key,
        accessibility: accessibility ?? this.accessibility,
      );

  factory ModelData.fromRawJson(String str) =>
      ModelData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelData.fromJson(Map<String, dynamic> json) => ModelData(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"]?.toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}