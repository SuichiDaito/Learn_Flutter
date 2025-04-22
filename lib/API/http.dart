// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:test1/model/comment_model.dart';

// class API {
//   static Future<List<dynamic>> getComment() async {
//     final List<Comment> list;
//     final response = await http.get(
//       Uri.parse("https://jsonplaceholder.typicode.com/posts/1/comments"),
//     );

//     if (response.statusCode == 200) {
//       final List<dynamic> jsonData = jsonDecode(response.body);
//       list = jsonData.map((comment) => Comment.fromJson(comment)).toList();
//       return list;
//     } else {
//       throw Exception('Fail to load ');
//     }
//   }
// }
