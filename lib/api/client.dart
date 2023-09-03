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

  // Future<bool> isEmailTaken(String email) async {
  //   final response = await http.get(
  //     Uri.parse('$baseUrl/api/users?email=$email'),
  //   );

  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> data = json.decode(response.body);
  //     return data['taken'] == true;
  //   } else {
  //     throw Exception('Failed to check email availability');
  //   }
  // }

  // Future<bool> isPhoneTaken(String mobile) async {
  //   final response = await http.get(
  //     Uri.parse(
  //         '$baseUrl/api/users?mobile=$mobile'), // Replace with your actual API endpoint
  //   );

  //   if (response.statusCode == 200) {
  //     // Parse the response from your server, e.g., {"taken": true} or {"taken": false}
  //     final Map<String, dynamic> data = json.decode(response.body);
  //     return data['taken'] == true;
  //   } else {
  //     throw Exception('Failed to check mobile number availability');
  //   }
  // }

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

  Future<void> resetPassword(String mobile) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/reset-password'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Bearer $token',
        },
        body: {
          'mobile': mobile,
        },
      );

      final jsonBody = json.decode(response.body);
      print('Response body: ${response.body}');

      if (jsonBody.containsKey('messgae')) {
        // Password reset request was successful.
        print(jsonBody['messgae']);
      } else if (jsonBody.containsKey('error')) {
        throw BackendAPIError(jsonBody['error']);
      } else {
        throw BackendAPIError('Failed to reset password');
      }
    } catch (e) {
      print('An error occurred during password reset: $e');
      throw BackendAPIError('Failed to reset password');
    }
  }

  Future<void> updatePassword(
      String mobile, String otp, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/update-password'),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $token',
      },
      body: {
        'mobile': mobile,
        'otp': otp,
        'password': password,
      },
    );

    if (response.body.toLowerCase().contains('otp is invalid')) {
      throw BackendAPIError("OTP you entered is incorrect");
    }

    final jsonBody = json.decode(response.body);

    if (jsonBody.containsKey('messgae')) {
      print(jsonBody['messgae']);
    } else if (jsonBody.containsKey('error')) {
      throw BackendAPIError(jsonBody['error']);
    } else {
      throw BackendAPIError('Failed to update password');
    }
  }

  Future<List<Category>> getCategories() async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/category'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      final categoryList = jsonBody['category'] as List<dynamic>;
      return categoryList.map((categoryJson) {
        return Category.fromJson(categoryJson);
      }).toList();
    } else {
      throw Exception('Failed to get categories');
    }
  }

  Future<Category> getCategoryDetails(int categoryId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/category/$categoryId'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return Category.fromJson(jsonBody['category']);
    } else {
      throw Exception('Failed to get category details');
    }
  }

  Future<Category> getSubcategoryDetails(int categoryId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/show-subcategory/$categoryId'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return Category.fromJson(jsonBody['category']);
    } else {
      throw Exception('Failed to get subcategories');
    }
  }

}
