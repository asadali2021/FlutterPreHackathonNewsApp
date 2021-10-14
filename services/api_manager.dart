// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:newconstants/strings.dart';
// import 'package:newsapp/models/newsInfo.dart';

// ignore: camel_case_types
// class API_Manager {
//   Future<NewsModel> getNews() async {
//     var client = http.Client();
//     var newsModel;

//     try {
//       var response = await client.get(Strings.news_url);
//       if (response.statusCode == 200) {
//         var jsonString = response.body;
//         var jsonMap = json.decode(jsonString);

//         newsModel = NewsModel.fromJson(jsonMap);
//       }
//     } catch (Exception) {
//       return newsModel;
//     }

//     return newsModel;
//   }
// }
