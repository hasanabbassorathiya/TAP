// To parse this JSON data, do
//
//     final paidProfile = paidProfileFromJson(jsonString);

import 'dart:convert';

PaidProfile paidProfileFromJson(String str) =>
    PaidProfile.fromJson(json.decode(str));

String paidProfileToJson(PaidProfile data) => json.encode(data.toJson());

class PaidProfile {
  PaidProfile({
    this.status,
    this.data,
  });

  String status;
  Data data;

  factory PaidProfile.fromJson(Map<String, dynamic> json) => PaidProfile(
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
    this.profile,
    this.fcmMatch,
  });

  Profile profile;
  bool fcmMatch;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
        fcmMatch: json["fcm_match"] == null ? null : json["fcm_match"],
      );

  Map<String, dynamic> toJson() => {
        "profile": profile == null ? null : profile.toJson(),
        "fcm_match": fcmMatch == null ? null : fcmMatch,
      };
}

class Profile {
  Profile({
    this.location,
    this.name,
    this.profilePicture,
    this.gender,
    this.age,
    this.socketId,
    this.friendshipSocketId,
    this.bio,
    this.customerId,
    this.subscriptionId,
    this.instagram,
    this.isBoosted,
    this.profileBreak,
    this.count,
    this.boostExp,
    this.boostPaid,
    this.premiumExp,
    this.isGlobal,
    this.isDating,
    this.jobTitle,
    this.likes,
    this.friendshipLikes,
    this.friendshipDislikes,
    this.blocked,
    this.dislikes,
    this.interests,
    this.isPremium,
    this.currency,
    this.id,
    this.user,
    this.birthday,
    this.photos,
    this.filters,
    this.basicInfo,
    this.preference,
    this.date,
    this.v,
    this.media,
    this.profileId,
  });

  Location location;
  String name;
  String profilePicture;
  String gender;
  int age;
  String socketId;
  String friendshipSocketId;
  String bio;
  String customerId;
  String subscriptionId;
  List<dynamic> instagram;
  bool isBoosted;
  bool profileBreak;
  int count;
  DateTime boostExp;
  bool boostPaid;
  DateTime premiumExp;
  bool isGlobal;
  bool isDating;
  String jobTitle;
  List<dynamic> likes;
  List<dynamic> friendshipLikes;
  List<dynamic> friendshipDislikes;
  List<String> blocked;
  List<dynamic> dislikes;
  List<Interest> interests;
  bool isPremium;
  String currency;
  String id;
  String user;
  DateTime birthday;
  List<Photo> photos;
  List<Filter> filters;
  List<BasicInfo> basicInfo;
  List<dynamic> preference;
  DateTime date;
  int v;
  List<Media> media;
  String profileId;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        name: json["name"] == null ? null : json["name"],
        profilePicture:
            json["profile_picture"] == null ? null : json["profile_picture"],
        gender: json["gender"] == null ? null : json["gender"],
        age: json["age"] == null ? null : json["age"],
        socketId: json["socket_id"] == null ? null : json["socket_id"],
        friendshipSocketId: json["friendship_socket_id"] == null
            ? null
            : json["friendship_socket_id"],
        bio: json["bio"] == null ? null : json["bio"],
        customerId: json["customer_id"] == null ? null : json["customer_id"],
        subscriptionId:
            json["subscription_id"] == null ? null : json["subscription_id"],
        instagram: json["instagram"] == null
            ? null
            : List<dynamic>.from(json["instagram"].map((x) => x)),
        isBoosted: json["is_boosted"] == null ? null : json["is_boosted"],
        profileBreak: json["break"] == null ? null : json["break"],
        count: json["count"] == null ? null : json["count"],
        boostExp: json["boost_exp"] == null
            ? null
            : DateTime.parse(json["boost_exp"]),
        boostPaid: json["boost_paid"] == null ? null : json["boost_paid"],
        premiumExp: json["premium_exp"] == null
            ? null
            : DateTime.parse(json["premium_exp"]),
        isGlobal: json["is_global"] == null ? null : json["is_global"],
        isDating: json["is_dating"] == null ? null : json["is_dating"],
        jobTitle: json["job_title"] == null ? null : json["job_title"],
        likes: json["likes"] == null
            ? null
            : List<dynamic>.from(json["likes"].map((x) => x)),
        friendshipLikes: json["friendship_likes"] == null
            ? null
            : List<dynamic>.from(json["friendship_likes"].map((x) => x)),
        friendshipDislikes: json["friendship_dislikes"] == null
            ? null
            : List<dynamic>.from(json["friendship_dislikes"].map((x) => x)),
        blocked: json["blocked"] == null
            ? null
            : List<String>.from(json["blocked"].map((x) => x)),
        dislikes: json["dislikes"] == null
            ? null
            : List<dynamic>.from(json["dislikes"].map((x) => x)),
        interests: json["interests"] == null
            ? null
            : List<Interest>.from(
                json["interests"].map((x) => Interest.fromJson(x))),
        isPremium: json["is_premium"] == null ? null : json["is_premium"],
        currency: json["currency"] == null ? null : json["currency"],
        id: json["_id"] == null ? null : json["_id"],
        user: json["user"] == null ? null : json["user"],
        birthday:
            json["birthday"] == null ? null : DateTime.parse(json["birthday"]),
        photos: json["photos"] == null
            ? null
            : List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
        filters: json["filters"] == null
            ? null
            : List<Filter>.from(json["filters"].map((x) => Filter.fromJson(x))),
        basicInfo: json["basic_info"] == null
            ? null
            : List<BasicInfo>.from(
                json["basic_info"].map((x) => BasicInfo.fromJson(x))),
        preference: json["preference"] == null
            ? null
            : List<dynamic>.from(json["preference"].map((x) => x)),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        v: json["__v"] == null ? null : json["__v"],
        media: json["media"] == null
            ? null
            : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
        profileId: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "location": location == null ? null : location.toJson(),
        "name": name == null ? null : name,
        "profile_picture": profilePicture == null ? null : profilePicture,
        "gender": gender == null ? null : gender,
        "age": age == null ? null : age,
        "socket_id": socketId == null ? null : socketId,
        "friendship_socket_id":
            friendshipSocketId == null ? null : friendshipSocketId,
        "bio": bio == null ? null : bio,
        "customer_id": customerId == null ? null : customerId,
        "subscription_id": subscriptionId == null ? null : subscriptionId,
        "instagram": instagram == null
            ? null
            : List<dynamic>.from(instagram.map((x) => x)),
        "is_boosted": isBoosted == null ? null : isBoosted,
        "break": profileBreak == null ? null : profileBreak,
        "count": count == null ? null : count,
        "boost_exp": boostExp == null ? null : boostExp.toIso8601String(),
        "boost_paid": boostPaid == null ? null : boostPaid,
        "premium_exp": premiumExp == null ? null : premiumExp.toIso8601String(),
        "is_global": isGlobal == null ? null : isGlobal,
        "is_dating": isDating == null ? null : isDating,
        "job_title": jobTitle == null ? null : jobTitle,
        "likes": likes == null ? null : List<dynamic>.from(likes.map((x) => x)),
        "friendship_likes": friendshipLikes == null
            ? null
            : List<dynamic>.from(friendshipLikes.map((x) => x)),
        "friendship_dislikes": friendshipDislikes == null
            ? null
            : List<dynamic>.from(friendshipDislikes.map((x) => x)),
        "blocked":
            blocked == null ? null : List<dynamic>.from(blocked.map((x) => x)),
        "dislikes": dislikes == null
            ? null
            : List<dynamic>.from(dislikes.map((x) => x)),
        "interests": interests == null
            ? null
            : List<dynamic>.from(interests.map((x) => x.toJson())),
        "is_premium": isPremium == null ? null : isPremium,
        "currency": currency == null ? null : currency,
        "_id": id == null ? null : id,
        "user": user == null ? null : user,
        "birthday": birthday == null ? null : birthday.toIso8601String(),
        "photos": photos == null
            ? null
            : List<dynamic>.from(photos.map((x) => x.toJson())),
        "filters": filters == null
            ? null
            : List<dynamic>.from(filters.map((x) => x.toJson())),
        "basic_info": basicInfo == null
            ? null
            : List<dynamic>.from(basicInfo.map((x) => x.toJson())),
        "preference": preference == null
            ? null
            : List<dynamic>.from(preference.map((x) => x)),
        "date": date == null ? null : date.toIso8601String(),
        "__v": v == null ? null : v,
        "media": media == null
            ? null
            : List<dynamic>.from(media.map((x) => x.toJson())),
        "id": profileId == null ? null : profileId,
      };
}

class BasicInfo {
  BasicInfo({
    this.premium,
    this.id,
    this.key,
    this.value,
  });

  bool premium;
  String id;
  Key key;
  String value;

  factory BasicInfo.fromJson(Map<String, dynamic> json) => BasicInfo(
        premium: json["premium"] == null ? null : json["premium"],
        id: json["_id"] == null ? null : json["_id"],
        key: json["key"] == null ? null : Key.fromJson(json["key"]),
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "premium": premium == null ? null : premium,
        "_id": id == null ? null : id,
        "key": key == null ? null : key.toJson(),
        "value": value == null ? null : value,
      };
}

class Key {
  Key({
    this.id,
    this.name,
    this.selection,
  });

  String id;
  String name;
  String selection;

  factory Key.fromJson(Map<String, dynamic> json) => Key(
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
        selection: json["selection"] == null ? null : json["selection"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
        "selection": selection == null ? null : selection,
      };
}

class Filter {
  Filter({
    this.premium,
    this.id,
    this.key,
    this.value,
    this.type,
    this.selection,
    this.range,
  });

  bool premium;
  String id;
  Key key;
  String value;
  String type;
  String selection;
  String range;

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        premium: json["premium"] == null ? null : json["premium"],
        id: json["_id"] == null ? null : json["_id"],
        key: json["key"] == null ? null : Key.fromJson(json["key"]),
        value: json["value"] == null ? null : json["value"],
        type: json["type"] == null ? null : json["type"],
        selection: json["selection"] == null ? null : json["selection"],
        range: json["range"] == null ? null : json["range"],
      );

  Map<String, dynamic> toJson() => {
        "premium": premium == null ? null : premium,
        "_id": id == null ? null : id,
        "key": key == null ? null : key.toJson(),
        "value": value == null ? null : value,
        "type": type == null ? null : type,
        "selection": selection == null ? null : selection,
        "range": range == null ? null : range,
      };
}

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
  Category category;
  DateTime date;
  String slug;
  int v;
  String image;

  factory Interest.fromJson(Map<String, dynamic> json) => Interest(
        flag: json["flag"] == null ? null : json["flag"],
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        slug: json["slug"] == null ? null : json["slug"],
        v: json["__v"] == null ? null : json["__v"],
        image: json["image"] == null ? null : json["image"],
      );

  Map<String, dynamic> toJson() => {
        "flag": flag == null ? null : flag,
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
        "category": category == null ? null : category.toJson(),
        "date": date == null ? null : date.toIso8601String(),
        "slug": slug == null ? null : slug,
        "__v": v == null ? null : v,
        "image": image == null ? null : image,
      };
}

class Category {
  Category({
    this.id,
    this.name,
  });

  String id;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}

class Location {
  Location({
    this.type,
    this.coordinates,
    this.address,
    this.milesAway,
  });

  String type;
  List<double> coordinates;
  String address;
  String milesAway;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        type: json["type"] == null ? null : json["type"],
        coordinates: json["coordinates"] == null
            ? null
            : List<double>.from(json["coordinates"].map((x) => x.toDouble())),
        address: json["address"] == null ? null : json["address"],
        milesAway: json["miles_away"] == null ? null : json["miles_away"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "coordinates": coordinates == null
            ? null
            : List<dynamic>.from(coordinates.map((x) => x)),
        "address": address == null ? null : address,
        "miles_away": milesAway == null ? null : milesAway,
      };
}

class Media {
  Media({
    this.question,
    this.assetId,
    this.isVideo,
    this.id,
    this.user,
    this.video,
    this.date,
    this.v,
    this.filename,
    this.comment,
    this.index,
  });

  List<Question> question;
  String assetId;
  bool isVideo;
  String id;
  String user;
  String video;
  DateTime date;
  int v;
  String filename;
  String comment;
  int index;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        question: json["question"] == null
            ? null
            : List<Question>.from(
                json["question"].map((x) => Question.fromJson(x))),
        assetId: json["asset_id"] == null ? null : json["asset_id"],
        isVideo: json["is_video"] == null ? null : json["is_video"],
        id: json["_id"] == null ? null : json["_id"],
        user: json["user"] == null ? null : json["user"],
        video: json["video"] == null ? null : json["video"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        v: json["__v"] == null ? null : json["__v"],
        filename: json["filename"] == null ? null : json["filename"],
        comment: json["comment"] == null ? null : json["comment"],
        index: json["index"] == null ? null : json["index"],
      );

  Map<String, dynamic> toJson() => {
        "question": question == null
            ? null
            : List<dynamic>.from(question.map((x) => x.toJson())),
        "asset_id": assetId == null ? null : assetId,
        "is_video": isVideo == null ? null : isVideo,
        "_id": id == null ? null : id,
        "user": user == null ? null : user,
        "video": video == null ? null : video,
        "date": date == null ? null : date.toIso8601String(),
        "__v": v == null ? null : v,
        "filename": filename == null ? null : filename,
        "comment": comment == null ? null : comment,
        "index": index == null ? null : index,
      };
}

class Question {
  Question({
    this.flag,
    this.id,
    this.name,
    this.category,
    this.date,
    this.slug,
    this.v,
  });

  bool flag;
  String id;
  String name;
  String category;
  DateTime date;
  String slug;
  int v;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        flag: json["flag"] == null ? null : json["flag"],
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null ? null : json["category"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        slug: json["slug"] == null ? null : json["slug"],
        v: json["__v"] == null ? null : json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "flag": flag == null ? null : flag,
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
        "category": category == null ? null : category,
        "date": date == null ? null : date.toIso8601String(),
        "slug": slug == null ? null : slug,
        "__v": v == null ? null : v,
      };
}

class Photo {
  Photo({
    this.filename,
    this.comment,
    this.index,
    this.isVideo,
    this.id,
  });

  String filename;
  String comment;
  int index;
  bool isVideo;
  String id;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        filename: json["filename"] == null ? null : json["filename"],
        comment: json["comment"] == null ? null : json["comment"],
        index: json["index"] == null ? null : json["index"],
        isVideo: json["is_video"] == null ? null : json["is_video"],
        id: json["_id"] == null ? null : json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "filename": filename == null ? null : filename,
        "comment": comment == null ? null : comment,
        "index": index == null ? null : index,
        "is_video": isVideo == null ? null : isVideo,
        "_id": id == null ? null : id,
      };
}
