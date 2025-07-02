import 'dart:convert';

import 'package:fiestapp/mock/user.mock.dart';
import 'package:fiestapp/models/suggestion.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class SuggestionService {
  Future<Suggestion> getSuggestion() async {
    String serviceUrl = dotenv.env['SERVICE_ENDPOINT'] ?? '';
    String url = '$serviceUrl/predict';
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(mockUsers),
    );
    if (response.statusCode == 200) {
      return Suggestion.fromJson(json.decode(response.body)["total_units"]);
    } else {
      print(response.body);
      throw Exception('Failed to load suggestions');
    }
  }
}
