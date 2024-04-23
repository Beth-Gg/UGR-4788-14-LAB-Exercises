import 'dart:convert';

import 'package:bloc_posts/models/model.dart';
import 'package:http/http.dart';

class postRepository {
  String postUrl = 'https://mocki.io/v1/1601b43e-2fb2-4765-a755-6ba04ef282a1';

  Future<List<postModel>> getPosts() async {
    Response response = await get(Uri.parse(postUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => postModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
