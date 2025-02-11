import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> GetRequest(String url, String token) async {
  try {
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
      return 'faild';
    }
  } catch (e) {
    print('Error: $e');
  }
}
