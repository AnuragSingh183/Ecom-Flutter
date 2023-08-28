import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl = "https://qwas-api.resellmall.com";
  final String token = "9|laravel_sanctum_pVNdi1YT2TvCJ4ZOR5QCBzBElMtz9GJzJNSRzI3b1b4a95c4";

  Future<User> login(String mobile, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/login'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {'mobile': mobile, 'password': password},
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return User.fromJson(jsonBody['user']);
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<User> createUser(Map<String, dynamic> userData) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/users'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $token',
      },
      body: userData,
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return User.fromJson(jsonBody['user']);
    } else {
      throw Exception('Failed to create user');
    }
  }

  Future<List<User>> fetchUsers() async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/users'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final userList = jsonBody['users'] as List<dynamic>;
      return userList.map((userJson) => User.fromJson(userJson)).toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}
