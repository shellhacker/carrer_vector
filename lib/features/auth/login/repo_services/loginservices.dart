import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../helper/helperroot.dart';
import '../model/login_responsemodel.dart';

class LoginService {
  LoginService._instans();
  static LoginService instance = LoginService._instans();
  factory LoginService() {
    return instance;
  }

  Future<LoginResponse?> userLogin(LoginUserModel value, context) async {
    String userName = 'username=${value.userName}&';
    String password = 'password=${value.password}';

    try {
      Response response = await Dio().post(
        baseUrl + loginUrl,
        queryParameters: {
          "username": value.userName,
          "password": value.password
        },
      );
      print(response.data);
      if (response.data['status'] == 'error') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Error Founded: '),
            backgroundColor: Color.fromARGB(255, 73, 73, 73)));
        log(response.data['error_description']);
        print('object');
      }
      if (response.statusCode == 200) {
        print(response.data);

        return LoginResponse.fromJson(response.data);
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Server Not Founded'),
            backgroundColor: Color.fromARGB(255, 97, 98, 97)));
        print(e);
      } else if (e.type == DioErrorType.connectTimeout) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Connection Time out')));
      } else if (e.type == DioErrorType.receiveTimeout) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Timeout Error')));
      } else if (e.type == DioErrorType.other) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Network Error')));
        print('errorrr$e');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error Founded: $e'),
          backgroundColor: const Color.fromARGB(255, 47, 48, 47)));
      print('errorrr$e');
    }
    return null;
    // return LoginRespoModel.fromJson(response.data);
  }
}

// FlutterSecureStorage secureStorage = const FlutterSecureStorage();
// getToken(GetAllTimeSlot value) async {
//   await secureStorage.write(key: 'Token', value: value.token);
//   await secureStorage.write(key: 'refreshToken', value: value.refreshToken);
//   await secureStorage.write(key: 'loginTrue', value: 'true');
// }
