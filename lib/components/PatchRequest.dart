import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> patchData(String url, Map<String, dynamic> data) async {
  try {
    final response = await http.patch(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      print('Data posted successfully!');
      return 'success';
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
