import 'dart:convert';
import 'package:hotel_hunt/services/globals.dart';

import 'package:http/http.dart' as http;

class AuthService {
  static Future<http.Response> register(
      String username, email, password) async {
    Map data = {"username": username, "email": email, "password": password};
    var body = json.encode(data);
    var url = Uri.parse(baseUrl + '/register');
    http.Response response = await http.post(url, headers: headers, body: body);
    print(response.body);
    return response;
  }

  static Future<http.Response> Login(String username, email, password) async {
    Map data = {"username": username, "email": email, "password": password};
    var body = json.encode(data);
    var url = Uri.parse(baseUrl + '/login');
    http.Response response = await http.post(url, headers: headers, body: body);
    print(response.body);
    return response;
  }
}
