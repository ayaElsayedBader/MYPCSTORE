import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/api/end_point.dart';
import '../../../../core/errors/server_failure.dart';
import '../../../../core/manger/string_app.dart';
import '../../domain/entities/model/register_model.dart';

abstract class RemoteDataRegister {
  Future<UserModel> addUserRegisterRemote({
    required email,
    required phone,
    required name,
    required nationalId,
    required password,
    required userImage,
    required token,
  });
}

class RemoteDataRegisterImp implements RemoteDataRegister {
  final Dio dio = Dio();

  @override
  Future<UserModel> addUserRegisterRemote({
    required email,
    required phone,
    required name,
    required nationalId,
    required password,
    required userImage,
    required token,
  }) async {
    try {
      dio.interceptors.add(LogInterceptor(responseBody: true));
      var response = await dio.post(EndPoints.userRegister, data: {
        "name": name,
        "email": email,
        "phone": phone,
        "nationalId": nationalId,
        "gender": "female",
        "password": password,
        "token": token,
        "profileImage": userImage
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (kDebugMode) {
          print(response);
        }

        var data = response.data;
        var user = UserModel.fromJson(data);
       return user;
      } else {
        if (kDebugMode) {
          print(
              '${StringApp.error} ${response.statusCode}: ${response.statusMessage}');
        }
        return Future.error(
            ServerFailure(errorMessage: '${response.statusMessage}'));
      }
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      return Future.error(ServerFailure(errorMessage: '$error'));
    }
  }
}
