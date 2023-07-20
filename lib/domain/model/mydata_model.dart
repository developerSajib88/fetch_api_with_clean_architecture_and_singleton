// To parse this JSON data, do
//
//     final myData = myDataFromJson(jsonString);

import 'dart:convert';

MyData myDataFromJson(String str) => MyData.fromJson(json.decode(str));

String myDataToJson(MyData data) => json.encode(data.toJson());

class MyData {
  final List<Post> posts;
  final int total;
  final int skip;
  final int limit;

  MyData({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  MyData copyWith({
    List<Post>? posts,
    int? total,
    int? skip,
    int? limit,
  }) =>
      MyData(
        posts: posts ?? this.posts,
        total: total ?? this.total,
        skip: skip ?? this.skip,
        limit: limit ?? this.limit,
      );

  factory MyData.fromJson(Map<String, dynamic> json) => MyData(
    posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
    total: json["total"],
    skip: json["skip"],
    limit: json["limit"],
  );

  factory MyData.init()=> MyData(posts: [], total: 0, skip: 0, limit: 0);

  Map<String, dynamic> toJson() => {
    "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };
}

class Post {
  final int id;
  final String title;
  final String body;
  final int userId;
  final List<String> tags;
  final int reactions;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  Post copyWith({
    int? id,
    String? title,
    String? body,
    int? userId,
    List<String>? tags,
    int? reactions,
  }) =>
      Post(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        userId: userId ?? this.userId,
        tags: tags ?? this.tags,
        reactions: reactions ?? this.reactions,
      );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["id"],
    title: json["title"],
    body: json["body"],
    userId: json["userId"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    reactions: json["reactions"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "body": body,
    "userId": userId,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "reactions": reactions,
  };
}

