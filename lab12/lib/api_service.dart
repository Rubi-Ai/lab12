import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://lab12.requestcatcher.com/',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    ),
  );

  // lg
  Future<void> login(String username, String password) async {
    try {
      final response = await dio.post(
        '/login',
        data: {'username': username, 'password': password},
      );
      log(">>>> ${response.data}");
    } catch (e) {
      log('Error: $e');
      
    }
  }

  // rg
  Future<void> signUp(String username, String email, String password) async {
    try {
      final response = await dio.post(
        '/signup',
        data: {'username': username, 'email': email, 'password': password},
      );
      log(">>>> ${response.data}");
    } catch (e) {
      log('Error: $e');
      
    }
  }

  // ps
  Future<void> resetPassword(String email) async {
    try {
      final response = await dio.post(
        '/reset',
        data: {'email': email},
      );
      log(">>>> ${response.data}");
    } catch (e) {
      log('Error: $e');
      
    }
  }
}
