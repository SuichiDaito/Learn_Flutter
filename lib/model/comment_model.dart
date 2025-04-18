import 'package:flutter/foundation.dart';

class Comment {
  final int postId;
  final int id;
  final String name;
  final String email;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}
