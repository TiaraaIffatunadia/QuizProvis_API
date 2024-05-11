import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterViewModel extends ChangeNotifier {
  bool _isRegistered = false;

  bool get isRegistered => _isRegistered;

  void register() {
    _isRegistered = true;
    notifyListeners();
  }

  Future<Response> registerUser({
    required String username,
    required String password,
  }) async {
    try {
      Response response = await Dio().post(
        'http://146.190.109.66:8000/users/',
        data: {
          "username": username,
          "password": password,
        },
      );
      return response;
    } catch (error, stacktrace) {
      print("Exception occurred: $error stackTrace: $stacktrace");
      throw Exception("Failed to register user: $error");
    }
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureText = true;

  void togglePasswordVisibility() {
    obscureText = !obscureText;
    notifyListeners();
  }
}