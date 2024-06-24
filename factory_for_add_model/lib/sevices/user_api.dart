import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tutorial01/model/user.dart';

class UserApi {
  static Future<List<User>> fetchUsers() async {
    const url = 'https://randomuser.me/api/?results=50';
    final response = await http.get(Uri.parse(url));
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map(
      (e) {
        return User.formMap(e);
      },
    ).toList();
    return users;
  }
}
