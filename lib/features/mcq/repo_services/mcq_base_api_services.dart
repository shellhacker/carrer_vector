import 'package:carrer_vector/features/mcq/model/responsemodel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../helper/helperroot.dart';

class McqBaseService {
  McqBaseService._instans();
  static McqBaseService instance = McqBaseService._instans();
  factory McqBaseService() {
    return instance;
  }

  Future<McqBaseModel?> mcqBaseapiCallingLogin(context) async {
    try {
      Response response = await Dio().get(baseUrl + mcqBse,
          queryParameters: {
            "stream": "40",
            "_sft_mode_of_education": "distance-mode",
            "_sft_skills": "basic-skills"
          },
          options: Options(headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsIm5hbWUiOiJzb251IiwiaWF0IjoxNjcxMDc3Mzk0LCJleHAiOjE4Mjg3NTczOTR9.p7Qpo-LFOZSrJczigsWcQNq4xBAQjMCmWF7815i3fCY"
          }));
      if (response.statusCode == 200) {
        // print(response.data);

        return McqBaseModel.fromJson(response.data);
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
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //     content: Text('Error Founded: $e'),
      //     backgroundColor: const Color.fromARGB(255, 47, 48, 47)));
      // print('errorrr$e');
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
