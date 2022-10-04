import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:intro_flutter/services/models/user_response.dart';

var dio = Dio();

Future<dynamic> getUser() async {
  try {
    var response = await dio.get('https://reqres.in/api/users?page=1');
    log('response : $response');

    var jsonResponse = jsonDecode(response.toString());

    return UserResponse.fromJson(jsonResponse);
  } catch (err) {
    print(err);
  }
}
