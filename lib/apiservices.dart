import 'dart:convert';

import 'package:http/http.dart' as http;

class Apiservice {
  static fatchdata() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }
}
