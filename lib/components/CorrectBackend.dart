import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

Future<String> CorrectBackend(String url, int sectionId) async {
  Map<String, dynamic> data = {
    "sectionId": sectionId,
    "correctAttempts": 1,
    "wrongAttempts": 0
  };
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  print(prefs.getString('token'));
  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      print('Data posted successfully!');
      return 'success';
    } else if (response.body.indexOf('Duplicate field value') != -1) {
      return 'account_exists';
    } else {
      print('Request failed with status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return 'failed';
    }
  } catch (e) {
    print('Error posting data: $e');
    return 'failed';
  }
}
