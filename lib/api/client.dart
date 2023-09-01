import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models.dart';

class BackendAPIError extends Error {
  final String message;

  BackendAPIError(this.message);
}

class ApiClient {
  String baseUrl = "https://qwas-api.resellmall.com";
  String token =
      "9|laravel_sanctum_pVNdi1YT2TvCJ4ZOR5QCBzBElMtz9GJzJNSRzI3b1b4a95c4";

  Future<User> login(String mobile, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/login'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {'mobile': mobile, 'password': password},
    );

    final jsonBody = json.decode(response.body);

    if (jsonBody.containsKey('user')) {
      return User.fromJson(jsonBody['user']);
    } else if (jsonBody.containsKey('message')) {
      throw BackendAPIError(jsonBody.toString());
    }

    throw BackendAPIError('Failed to parse API response');
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

    final jsonBody = json.decode(response.body);

    if (jsonBody.containsKey('user')) {
      return User.fromJson(jsonBody['user']);
    } else if (jsonBody.containsKey('message')) {
      throw BackendAPIError(jsonBody.toString());
    }

    throw BackendAPIError('Failed to parse API response');
  }

  Future<List<User>> fetchUsers() async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/users'),
      headers: {'Authorization': 'Bearer $token'},
    );

    final jsonBody = json.decode(response.body);

    if (jsonBody.containsKey('users')) {
      final userList = jsonBody['users'] as List<dynamic>;
      return userList.map((userJson) => User.fromJson(userJson)).toList();
    } else if (jsonBody.containsKey('message')) {
      throw BackendAPIError(jsonBody.toString());
    }

    throw BackendAPIError('Failed to parse API response');
  }
}
