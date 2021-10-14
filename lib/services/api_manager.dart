// ignore: todo
// TODO Implement this library.
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mynewsapp/constants/strings.dart';
import 'package:mynewsapp/models/newsInfo.dart';

// ignore: camel_case_types
class API_Manager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    // ignore: prefer_typing_uninitialized_variables
    var newsModel;
    var Strings;
    try {
      var response = await client.get(Strings.news_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } on Exception {
      return newsModel;
    }

    return newsModel;
  }
}

// class Strings {
//   static Uri news_url;
// }

class NewsModel {
  static fromJson(jsonMap) {}
}
