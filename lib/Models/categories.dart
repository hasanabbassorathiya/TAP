// To parse this JSON data, do
//
//     final categories = categoriesFromJson(jsonString);

import 'dart:convert';

Categories categoriesFromJson(String str) =>
    Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
    this.status,
    this.data,
  });

  String status;
  Data data;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.interests,
    this.premium,
    this.id,
    this.name,
    this.selection,
    this.date,
    this.slug,
    this.v,
  });

  List<Interest> interests;
  bool premium;
  Id id;
  String name;
  String selection;
  DateTime date;
  String slug;
  int v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        interests: json["interests"] == null
            ? null
            : List<Interest>.from(
                json["interests"].map((x) => Interest.fromJson(x))),
        premium: json["premium"] == null ? null : json["premium"],
        id: json["_id"] == null ? null : idValues.map[json["_id"]],
        name: json["name"] == null ? null : json["name"],
        selection: json["selection"] == null ? null : json["selection"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        slug: json["slug"] == null ? null : json["slug"],
        v: json["__v"] == null ? null : json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "interests": interests == null
            ? null
            : List<dynamic>.from(interests.map((x) => x.toJson())),
        "premium": premium == null ? null : premium,
        "_id": id == null ? null : idValues.reverse[id],
        "name": name == null ? null : name,
        "selection": selection == null ? null : selection,
        "date": date == null ? null : date.toIso8601String(),
        "slug": slug == null ? null : slug,
        "__v": v == null ? null : v,
      };
}

enum Id { THE_616_BDAA6_A1_B49050_B2723_B31 }

final idValues = EnumValues(
    {"616bdaa6a1b49050b2723b31": Id.THE_616_BDAA6_A1_B49050_B2723_B31});

class Interest {
  Interest({
    this.flag,
    this.id,
    this.name,
    this.category,
    this.date,
    this.slug,
    this.v,
    this.image,
  });

  bool flag;
  String id;
  String name;
  Id category;
  DateTime date;
  String slug;
  int v;
  String image;

  factory Interest.fromJson(Map<String, dynamic> json) => Interest(
        flag: json["flag"] == null ? null : json["flag"],
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
        category:
            json["category"] == null ? null : idValues.map[json["category"]],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        slug: json["slug"] == null ? null : json["slug"],
        v: json["__v"] == null ? null : json["__v"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "flag": flag == null ? null : flag,
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
        "category": category == null ? null : idValues.reverse[category],
        "date": date == null ? null : date.toIso8601String(),
        "slug": slug == null ? null : slug,
        "__v": v == null ? null : v,
        "image": image == null ? null : image,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
