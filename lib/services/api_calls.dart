

import 'dart:io';
import 'package:crowdhubtest/models/event_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

Future<List<Content>> getEvents(http.Client client) async {

  final url = "http://hardingdevelopment.nexisit.net/harding_api/api_event_search.php?page_num=0&per_page=20&buckets=Volunteering&timezone=25200&app_server_version=3.2&app_version=2&app_build=1&user_id=2&token=70aedda35dca9c192ef551c9f7b570e0&salt=309a9bea4d2695656e83f4fe7b340ee0&app=1&version=3.2";
  final response = await client.get(
    url,
  );
    print(response.body);
    if (response != null) {
      var betterJson = jsonDecode(response.body)['content'] as List;
      List<Content> parsedList = betterJson.map((tagJson) =>
          Content.fromJson(tagJson)).toList();
      return parsedList;
    }
  }
// }