import 'dart:convert';
import 'package:demo_azulmanproject/constants.dart';
import 'package:demo_azulmanproject/Services/json.info.dart';
import 'package:http/http.dart' as http;


class API_Manager {
  Future<Welcome>  getData() async {
    var client = http.Client();

    var welcome = null;

    try {
      var response = await client.get(Uri.parse(Strings.url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);
        welcome = Welcome.fromJson(jsonMap);
      }
    }
    catch (e) {
      return welcome;
    }
    return welcome;
  }
}
